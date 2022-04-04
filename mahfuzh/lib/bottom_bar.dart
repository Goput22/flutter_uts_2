//import package yang diperlukan
import 'package:flutter/material.dart';

//Membuat kelas BottomBar yang akan menerapkan StatelessWidget dengan atribut atribut seperti dibawah untuk mengatur tampilannya agar menarik 
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        //Membuat baris dengan mainAxisAlignment spaceBetween yang akan di bungkus dengan container menampilkan icon home dan chat dengan spaceevenly
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.home, color: Color.fromARGB(255, 84, 51, 117)),
                  Icon(Icons.chat_bubble_outline, color: Color(0xFF676E79))
                ],
              )
            ),
        //Membuat baris  yang akan di bungkus dengan container menampilkan icon shopping_cart_outlined dan person_outlined dengan spaceevenly
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.shopping_cart_outlined, color: Color(0xFF676E79)),
                  Icon(Icons.person_outlined, color: Color(0xFF676E79))
                ],
              )
            ),
          ]
        )
      )
    );
    //Bottom bar ini akan dipanggil terus untuk tampilan di bottom bar aplikasi yang akan menampilkan home, chat, keranjan dan profil pengguna
  }
}



