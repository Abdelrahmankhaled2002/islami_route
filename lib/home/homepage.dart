import 'package:flutter/material.dart';
import 'package:islami/home/tabs/hadethtab.dart';
import 'package:islami/home/tabs/qurantab.dart';
import 'package:islami/home/tabs/radiotab.dart';
import 'package:islami/home/tabs/sebhatab.dart';
import 'package:islami/mytheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static const String route_name='homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int CurrentIndex=0;
  var tabs=[ //to navigate between tabs usinig index
    QuranTap(),
    HadethTap(),
    SebhaaTap(),
    RadoiTab()
  ];
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Image.asset('assets/images/background_image.png',width:double.infinity,fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              CurrentIndex=index;
              setState(() {});
            },
            currentIndex: CurrentIndex,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png'),),
                label: 'quran',
                backgroundColor: Color.fromARGB(250, 183, 147, 95),
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/hadeth.png'),),
              label:'hadeth',
                backgroundColor: Color.fromARGB(250, 183, 147, 95),
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png'),),
              label: 'sebha',
                backgroundColor: Color.fromARGB(250, 183, 147, 95),
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png'),),
              label: 'radio',
                backgroundColor: Color.fromARGB(250, 183, 147, 95),
              ),
            ],
          ),
          body: Container(
              padding: EdgeInsets.all(8),
              child: tabs[CurrentIndex]

          ),
        ),
      ],
    );

  }

}
