import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Gif extends StatelessWidget {
  Gif(this._gifData, {Key? key}) : super(key: key);
  Map _gifData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData['title']),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.share_sharp),
            onPressed: (){
              Share.share(_gifData["images"]["fixed_height"]['url']);
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Image.network(_gifData["images"]["fixed_height"]['url']),
        ),
      ),
    );
  }
}
