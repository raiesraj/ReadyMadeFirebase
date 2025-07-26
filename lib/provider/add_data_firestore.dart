import 'package:flutter/material.dart';
import 'package:practice/FirebaseServices/firestore_services.dart';
import 'package:practice/Models/add_data_model.dart';
import 'package:practice/helper/loader_services.dart';
import 'package:practice/helper/snackbar_service.dart';

class FireStoreProvider with ChangeNotifier {

  final FirestoreService _firestoreService = FirestoreService();

  Future addData(ItemModel item)async{
    LoaderService.showLoader();

    try{
      await _firestoreService.addItem(item);


  }catch (e){
      SnackbarService.showInfo("Error adding item $e");
    }
    LoaderService.hideLoader();
    }


}