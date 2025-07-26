import 'package:flutter/material.dart';
import 'package:practice/Models/add_data_model.dart';
import 'package:practice/provider/add_data_firestore.dart';
import 'package:provider/provider.dart';



class AddDataTOFirebaseScreen extends StatelessWidget {
  const AddDataTOFirebaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              hintText:  "name",
            ),
          ),
          TextButton(onPressed: (){
            final name = nameController.text;
            if(name.isNotEmpty){
              final newData = ItemModel(name: name);
              context.read<FireStoreProvider>().addData(newData);
              nameController.clear();
            }

          }, child: const Text("Add Data"),),

        ],
      ),
    );
  }
}
