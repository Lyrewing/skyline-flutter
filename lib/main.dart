import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        //splashColor: Colors.deepPurple[600]
      ),
      home: MyHomePage(title: 'Flutter Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

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
              title: Text('消息',textAlign: TextAlign.right),
              trailing: Icon(Icons.message,color: Colors.black26,size: 22.0,),
              onTap: ()=>Navigator.pop(context),
              ), 
            ListTile(
              title: Text('最爱',textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite,color: Colors.black26,size: 22.0,),
              onTap: ()=>Navigator.pop(context),
              ), 
            ListTile(
              title: Text('设置',textAlign: TextAlign.right),
              trailing: Icon(Icons.settings,color: Colors.black26,size: 22.0,),
              onTap: ()=>Navigator.pop(context),
              ), 
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("explore")
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("history")
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("list")
        ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("my")
        ),
        
        ],
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Navigration',
          onPressed: ()=>debugPrint(""),
          ),
        ],
        bottom: TabBar(
          unselectedLabelColor: Colors.black26,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          indicatorColor: Colors.black54,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.local_florist)),
            Tab(icon: Icon(Icons.local_airport)),
            Tab(icon: Icon(Icons.local_bar)),
          ],
        ),
      ),

      body: TabBarView(
        children: <Widget>[
          Icon(Icons.local_florist,size: 128,color: Colors.black12,),
          Icon(Icons.local_airport,size: 128,color: Colors.black12,),
          Icon(Icons.local_bar,size: 128,color: Colors.black12,)
        ],
      ),

    );

    return DefaultTabController(
      length: 3,
      child: scaffold,
      
    );

   


  }
}
