import 'package:flutter/material.dart';

import 'package:my_app/db_helper/db_helper.dart';


class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddTypesState();
}

class _AddTypesState extends State<AddData> {
  List<Map<String, dynamic>> _allData = [];

  bool _isLoading = true;

  void _refreshData() async {
    final data = await SQLHelper.getAllData();
    setState(() {
      _allData = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  Future<void> _addData() async {
    await SQLHelper.createData(_titleController.text, _descController.text);
    _refreshData();
  }

  Future<void> _updateData(int id) async {
    await SQLHelper.updateData(id, _titleController.text, _descController.text);
    _refreshData();
  }

  void _deleteData(int id) async {
    await SQLHelper.deleteData(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      backgroundColor: Colors.redAccent,
      content: Text("data Deleted"),
    ));
    _refreshData();
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  void showBottomSheet(int? id) async {
    if (id != null) {
      final existingData =
          _allData.firstWhere((element) => element['id'] == id);
      _titleController.text = existingData['title'];
      _descController.text = existingData['description'];
    }

    showModalBottomSheet(
      elevation: 5,
      isScrollControlled: true,
      context: context,
      builder: (_) => Container(
        padding: EdgeInsets.only(
            top: 30,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), 
                  hintText: "Masukkan Periode Bulan Pembayaran"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descController,
              maxLines: 4,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), 
                  hintText: "Masukkan Nominal"),
            ),
            
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(1000, 8, 102, 255),
                ),
                onPressed: () async {
                  if (id == null) {
                    await _addData();
                  } else {
                    await _updateData(id);
                  }

                  _titleController.text = "";
                  _descController.text = "";

                  Navigator.of(context).pop();
                  print("Data Added/Updated");
                },
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    id == null ? "Add Data" : "Update",
                    style: const TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 8, 102, 255),
      appBar: AppBar(
        title: const Text("CRUD"),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _allData.length,
              itemBuilder: (context, index) => Card(
                margin: const EdgeInsets.all(15),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      _allData[index]['title'],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  subtitle: Text(_allData[index]['description']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          showBottomSheet(_allData[index]['id']);
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.indigo,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _deleteData(_allData[index]['id']);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showBottomSheet(null),
        child: const Icon(Icons.add),
      ),
    );
  }
}