import 'package:flutter/material.dart';
import 'package:islami/suradetails/suradetails.dart';
class SuraItem extends StatelessWidget {
  String SuraName;
  int index;
  SuraItem(this.SuraName,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.route_name,
        arguments:SuraDetailsArguments(SuraName: SuraName, index: index),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(SuraName,
          style: Theme.of(context).textTheme.subtitle1
          ),
        ),
      ),
    );
  }
}
