import 'package:flutter/material.dart';
import '../config/settings.dart';
import '../models/article.dart';

class WordCard extends StatefulWidget {
  Article article;
  WordCard(this.article);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WordCard(article);
  }
}

class _WordCard extends State<WordCard> {
  Article article;
  _WordCard(this.article);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return wordsCard(article);
  }

  Widget wordsCard(Article article) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = new Text(article.mark,
          style: new TextStyle(height: 1.3, color: GlobalConfig.fontColor));
    } else {
      markWidget = new Row(
        children: <Widget>[
          new Expanded(
            flex: 2,
            child: new Container(
              child: new Text(article.mark,
                  style: new TextStyle(
                      height: 1.3, color: GlobalConfig.fontColor)),
            ),
          ),
          new Expanded(
              flex: 1,
              child: new AspectRatio(
                  aspectRatio: 3.0 / 2.0,
                  child: new Container(
                    foregroundDecoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage(article.imgUrl),
                          centerSlice:
                              new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                        ),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(6.0))),
                  ))),
        ],
      );
    }
    return new Container(
        decoration: BoxDecoration(
          color: GlobalConfig.cardBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.grey[600],blurRadius: 5.0),

          ]
        ),
        margin: const EdgeInsets.only(right: 5.0,left: 5.0, top: 5.0, bottom: 5.0),
        child: new FlatButton(
          onPressed: () => {},
          child: new Column(
            children: <Widget>[
              new Container(
                
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new CircleAvatar(
                          backgroundImage: new NetworkImage(article.headUrl),
                          radius: 11.0),
                    ),
                    new Text(
                        "  " +
                            article.user +
                            " " +
                            article.action +
                            " · " +
                            article.time,
                        style: new TextStyle(color: GlobalConfig.fontColor))
                  ],
                ),
                padding: const EdgeInsets.only(top: 10.0),
              ),
              new Container(
                  child: new Text(article.title,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          height: 1.3,
                          color: Colors.grey[800])),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft),
              new Container(
                  child: markWidget,
                  margin: new EdgeInsets.only(top: 6.0),
                  alignment: Alignment.topLeft),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text(
                            article.agreeNum.toString() +
                                " 赞同 · " +
                                article.commentNum.toString() +
                                "评论",
                            style:
                                new TextStyle(color: GlobalConfig.fontColor))),
                    new PopupMenuButton(
                        icon: new Icon(
                          Icons.linear_scale,
                          color: GlobalConfig.fontColor,
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<String>>[
                              new PopupMenuItem<String>(
                                  value: '选项一的值', child: new Text('屏蔽这个问题')),
                              new PopupMenuItem<String>(
                                  value: '选项二的值',
                                  child: new Text('取消关注 learner')),
                              new PopupMenuItem<String>(
                                  value: '选项二的值', child: new Text("举报"))
                            ])
                  ],
                ),
                padding: const EdgeInsets.only(),
              )
            ],
          ),
        ));
  }
}
