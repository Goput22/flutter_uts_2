//mengimport package yang di perlukan 
import 'package:flutter/material.dart';
import 'package:mahfuzh/bottom_bar.dart';
import 'package:mahfuzh/page/aksi.dart';
import 'package:mahfuzh/page/horor.dart';
import 'package:mahfuzh/page/anime.dart';
import 'package:mahfuzh/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ); 
    //Class MyApp, disini merupakan StatelessWidget dan mengarahkan ke halaman Splashscreen
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//class MyHomePage yang merupakan StatefullWidget yang akan membuat kondisi konsi di halaman pertama aplikasi setelah splashscreen

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: Text('Ticket Store',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      //bagian AppBar yang menampilkan title Ticket Store dengan menerapkan atrribut seperti diatas
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Kategori Film',
              style: TextStyle(
                  fontFamily: 'Staatliches',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color.fromARGB(255, 84, 51, 117),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Aksi',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ), 
                //Membuat tab menu dengan nama Aksi
                Tab(
                  child: Text('Horor',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                //Membuat tab menu dengan nama Horor
                Tab(
                  child: Text('Anime',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                ////Membuat tab menu dengan nama Anime
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                AksiPage(),
                HororPage(),
                AnimePage(),
              ]))
              //TabBarView yang dibungkus di dalam container , memanggil AksiPage(), HororPage(), dan AnimePage()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 122, 59, 150),
        child: Icon(Icons.store),
      ),
      //membuat floating  button dan diberi di icon store di tengah
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
    //Memanggil BottomBar() untuk di tampilkan juga di halaman page setelah splashscreen
  }
}
