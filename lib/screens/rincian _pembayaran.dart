// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:my_app/screens/routes/Pembayaran.dart';



class RincianPembayaran extends StatefulWidget {
  const RincianPembayaran({Key? key}) : super(key: key);

  get context => null;

  void openDialog() {
    
  }

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<RincianPembayaran> {
  final String imageUrl = 'https://picsum.photos/250?image=9';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

          const SizedBox(
            height: 16,
          ),
          const Text(
            "RINCIAN PEMBAYARAN",
            style: TextStyle(
              fontSize: 20, 
              color: Colors.white,
              fontWeight: FontWeight.bold),
          ),
        
        const Padding(
          padding: EdgeInsets.all(16),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(children: [
                      Text(
                        'Nomor Induk Siswa',
                        style: TextStyle(fontSize: 18),
                      )
                    ]),
                  ),
                  Card(
                      color: Color.fromARGB(255, 220, 219, 219),
                      child: ListTile(
                        title: Text(
                          '987654321',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(children: [
                      Text(
                        'Nama Siswa',
                        style: TextStyle(fontSize: 18),
                      )
                    ]),
                  ),
                  Card(
                      color: Color.fromARGB(255, 220, 219, 219),
                      child: ListTile(
                        title: Text(
                          'Anggita Cahya',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(children: [
                      Text(
                        'Tagihan Bulan',
                        style: TextStyle(fontSize: 18),
                      )
                    ]),
                  ),
                  Card(
                      color: Color.fromARGB(255, 220, 219, 219),
                      child: ListTile(
                        title: Text(
                          'April 2024',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Tagihan',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Rp. 100.000',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        
        const SizedBox(
          height: 20,
        ),

        
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pembayaran()), 
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 50)
          ),
          child: const Text('Bayar', 
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(1000, 8, 102, 255),

          ),), // Teks pada tombol
        ),
       
      ],
    );
  }
  
 

  
}
