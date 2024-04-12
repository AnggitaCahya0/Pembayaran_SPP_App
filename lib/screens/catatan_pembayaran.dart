import 'package:flutter/material.dart';


class CatatanPembayaran extends StatelessWidget {
  const CatatanPembayaran({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(1000, 8, 102, 255),
      body: Padding(
        padding: EdgeInsets.all(16),
        child:  Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('CATATAN PEMBAYARAN', 
              style: TextStyle(
                fontSize: 20, 
                color: Colors.white,
                fontWeight: FontWeight.bold) 
                ),
            ), 
           
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  elevation: 15,
                  child: ListTile(
                    title: Text('Pembayaran SPP Bulan Maret',),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('20 Maret 2024', style: TextStyle(color: Colors.grey),), 
                        Text('Rp. 100.000', style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                      trailing: Icon(Icons.task_alt_rounded, color: Colors.green,),  
                  ),
                ),
              ),
            
             Padding(
               padding: EdgeInsets.symmetric(vertical: 12),
               child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 15,
                child: ListTile(
                  title: Text('Pembayaran SPP Bulan Februari',),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('21 Februari 2024', style: TextStyle(color: Colors.grey),), 
                      Text('Rp. 100.000', style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                    trailing: Icon(Icons.task_alt_rounded, color: Colors.green,),  
                ),
                           ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 12),
               child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 15,
                child: ListTile(
                  title: Text('Pembayaran SPP Bulan Januari',),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('18 Januari 2024', style: TextStyle(color: Colors.grey),), 
                      Text('Rp. 100.000', style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                    trailing: Icon(Icons.task_alt_rounded, color: Colors.green,),  
                ),
                           ),
             ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 15,
                child: ListTile(
                  title: Text('Pembayaran SPP Bulan Januari',),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('18 Januari 2024', style: TextStyle(color: Colors.grey),), 
                      Text('Rp. 100.000', style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                    trailing: Icon(Icons.task_alt_rounded, color: Colors.green,),  
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 15,
                child: ListTile(
                  title: Text('Pembayaran SPP Bulan Januari',),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('18 Januari 2024', style: TextStyle(color: Colors.grey),), 
                      Text('Rp. 100.000', style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                    trailing: Icon(Icons.task_alt_rounded, color: Colors.green,),  
                ),
              ),
            ),



          ],
        ),
      ),
      
      
      

      
    );
  }
}
