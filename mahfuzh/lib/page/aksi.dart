//mengimport package yang dibutuhkan
import 'package:flutter/material.dart';
import 'package:mahfuzh/model/aksi_d.dart';

//membuat class AksiPage yang menggunakan StatelessWidget jadi kita akan turunkan dengan extends
class AksiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Avenger1', '\Rp.60.000', 'assets/1.jpg', 'Harga: Rp.100.000, Durasi: 1 jam',
                      false, false, context),
                  _buildCard('Avenger2', '\Rp.70.000','assets/2.jpg' ,'Harga: Rp.100.000, Durasi: 2 jam',
                      false, false, context),
                  _buildCard('Avenger3', '\Rp.50.000', 'assets/3.jpeg','Harga: Rp.100.000, Durasi: 2 jam',
                      false, false, context),
                  _buildCard('Supernova', '\Rp.80.000', 'assets/avg4.jfif','Harga: Rp.100.000, Durasi: 2 jam',
                      false, false, context),
                          
                ],
                //Widget yang akan menjadi isi /content di halaman horor page dengan listview
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath,String ndetail, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: .0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AksiD(
                    assetPath: imgPath,
                    aksiprice:price,
                    aksiname: name,
                    detail: ndetail,
                  )));
                  //Disini kita akan meroutekan ke halaman horror_d.dart dengan memanggil classnya yaitu AksiD
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          )),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.shopping_cart,
                                  color: Color(0xFFD17E50), size: 12.0),
                              Text('Add to cart',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFFD17E50),
                                      fontSize: 12.0))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.0),
                              Text('3',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFFD17E50),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0)),
                              Icon(Icons.add_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.0),
                            ]
                          ]
                        )
                      )
                    ]
                  )
                )
        )
     );
  }
}
