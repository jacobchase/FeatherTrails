import 'package:flutter/material.dart';
import 'itin_cover.dart';
import 'itin_item.dart';

class ItinDetails extends StatelessWidget{
  final ItinCover itin;
  ItinDetails({required this.itin});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder')
      ),
    );

  }

}