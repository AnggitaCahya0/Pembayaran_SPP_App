import 'package:flutter/material.dart';


class Pembayaran extends StatelessWidget {
  const Pembayaran({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromARGB(1000, 8, 102, 255),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Text('Menunggu Pembayaran',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                  ),

                   SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Mohon selesaikan pembayaran dengan rincian sebagai berikut',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                    ),
                    textAlign: TextAlign.center,),
                    
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Kode Virtual Account',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('123456789000',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Jumlah yang dibayar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Rp. 100.000',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Silahkan melakukan pembayaran menggunakan nomor VA diatas melalui channel Bank BPD sebelum 24 jam',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                    ),
                    textAlign: TextAlign.center,),
                  ),




                             
                 
                ],
              ),
            ),
          ),

        ),
       

    );
  }
  }

