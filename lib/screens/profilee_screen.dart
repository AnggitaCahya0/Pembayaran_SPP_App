import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileeScreen extends StatelessWidget {
  const ProfileeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(1000, 8, 102, 255),
      appBar: AppBar(
        title: const Text('PROFILE'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
          const SizedBox(height: 30),
          itemProfile('Nama', 'Anggita Cahya', CupertinoIcons.person),
          const SizedBox(height: 20),
          itemProfile('NIS', '098765432', CupertinoIcons.number),
          const SizedBox(height: 20),
          itemProfile('Kelas', 'XII MIPA 1', CupertinoIcons.building_2_fill),
          const SizedBox(height: 20),
          itemProfile('Angkatan', '2022', CupertinoIcons.book),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, backgroundColor: Colors.white, 
    child: const Icon(Icons.add),),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 5)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.delete),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.edit)
          ],
        ),
        tileColor: Colors.white,
      ),
    );

    
  }
}
