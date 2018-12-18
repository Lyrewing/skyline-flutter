
import 'package:flutter/material.dart';
import '../mock/mock.dart';
import '../components/search.dart';
import '../components/wordcard.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {


    var scaffold = Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Feng Zhanyuan'),
              accountEmail: Text('iven.feng@outlook.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=648886844,2783634220&fm=26&gp=0.jpg"),

              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.deepPurple[400].withOpacity(0.6), BlendMode.hardLight),
                  image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544950224191&di=64ebdbb4fe167a2aa9dae00dae04b338&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F1e30e924b899a9016d6c9cab17950a7b0308f5d6.jpg")
                )
                
              ), 

            ),
            ListTile(
              title: Text('消息',textAlign: TextAlign.right,),
              trailing: Icon(Icons.message,color: Colors.black38,size: 22.0,),
              onTap: ()=>Navigator.pop(context),
              ), 
            ListTile(
              title: Text('最爱',textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite,color: Colors.black38,size: 22.0,),
              onTap: ()=>Navigator.pop(context),
              ), 
            ListTile(
              title: Text('设置',textAlign: TextAlign.right),
              trailing: Icon(Icons.settings,color: Colors.black38,size: 22.0,),
              onTap: ()=>Navigator.pop(context),
              ), 
          ], 
        ),
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: SearchBar(),
        elevation: 0.0,
        actions: <Widget>[         
          IconButton(
          icon: Icon(Icons.crop_free),
          tooltip: 'Navigration',
          onPressed: ()=>debugPrint(""),
          ),
        ],
        bottom: TabBar(
          
          unselectedLabelColor: Colors.black38,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 2.0,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.local_florist)),
            Tab(icon: Icon(Icons.local_airport)),
            Tab(icon: Icon(Icons.local_bar)),
            Tab(icon: Icon(Icons.movie)),
            Tab(icon: Icon(Icons.music_note)),
            Tab(icon: Icon(Icons.code))
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: <Widget>[
                  WordCard(articles[0]),
                  WordCard(articles[1]),
                  WordCard(articles[2]),
                  WordCard(articles[3])
                ],
              ),
            ),
          ),
          Icon(Icons.local_airport,size: 128,color: Colors.black12,),
          Icon(Icons.local_bar,size: 128,color: Colors.black12,),
          Icon(Icons.movie,size: 128,color: Colors.black12,),
          Icon(Icons.music_note,size: 128,color: Colors.black12,),
          Icon(Icons.code,size: 128,color: Colors.black12,)
        ],
      ),

    );

    return DefaultTabController(
      length: 6,
      child: scaffold,
      
      
    );
  }
}