import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(1000, 8, 102, 255),
        
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  AssetImageWidget(
                      imagePath: 'assets/images/SMA.jpeg',
                      width: 390,
                      height: 350,
                      fit: BoxFit.cover),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              //text pengumuman
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "PENGUMUMAN",
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    trailing: const Icon(Icons.payment_outlined),
                    title: const Text('Batas Akhir Pembayaran'),
                    subtitle: const Text(
                      '25 April 2024',
                      style: TextStyle(color: Colors.red),
                    ),
                    leading: Container(
                      child: const Icon(Icons.warning, color: Colors.red),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    trailing: const Icon(Icons.payment_outlined),
                    title: const Text('Periode Pembayaran'),
                    subtitle: const Text(
                      '1-25 April 2024',
                      style: TextStyle(color: Colors.red),
                    ),
                    leading: Container(
                      child: const Icon(Icons.warning, color: Colors.red),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    trailing: const Icon(Icons.payment_outlined),
                    title: const Text('Batas Akhir Pembayaran'),
                    subtitle: const Text(
                      '25 April 2024',
                      style: TextStyle(color: Colors.red),
                    ),
                    leading: Container(
                      child: const Icon(Icons.warning, color: Colors.red),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
