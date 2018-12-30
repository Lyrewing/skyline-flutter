import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchBar();
  }
}

class _SearchBar extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 35.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton.icon(
              onPressed: () => {},
              icon: Icon(Icons.search, color: Colors.grey[700], size: 12.0),
              label: Text("坚果R1摄像头", style: TextStyle(color: Colors.grey[700])),
            ),
          ),

          Container(
            decoration: new BoxDecoration(
                border: new BorderDirectional(
                    start: new BorderSide(color: Colors.grey[600], width: 1.0))),
            height: 14.0,
            width: 1.0,
          ),
          
          Container(
              child: new FlatButton.icon(
            onPressed: () => {},
            icon: new Icon(Icons.border_color, color: Colors.grey[600], size: 14.0),
            label: new Text("提问", style: new TextStyle(color: Colors.grey[600])),
          ))
        ],
      ),
      decoration: new BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
          color: Colors.white54),
    );
  }
}
