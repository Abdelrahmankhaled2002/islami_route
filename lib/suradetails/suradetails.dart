import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/suradetails/suradetails.dart';

class SuraDetails extends StatefulWidget {
 // const SuraDetails({Key? key}) : super(key: key);
  static const route_name="Sura";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraDetailsArguments;
    if (verses.length==0){
    LoadFile('${args.index+1}');}
    return Stack(
      children: [
        Image.asset('assets/images/background_image.png',width: double.infinity,fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(args.SuraName,
              style: Theme.of(context).textTheme.headline1

            ),
          ),
          body: verses.length==0?
          CircularProgressIndicator():
          ListView.builder(itemBuilder: (context,index){
            return Text(verses[index]);
          },
          itemCount: verses.length,
          ),
        ),
      ],
    );

  }

  void LoadFile(String filename)async{
    String filecontent =await rootBundle.loadString("assets/files/$filename.txt");
    List<String>verses=filecontent.split('/n');
    this.verses=verses;
    setState((){});
  }
}

class SuraDetailsArguments{
  String SuraName;
  int index;
  SuraDetailsArguments({required this.SuraName, required this.index});

}
