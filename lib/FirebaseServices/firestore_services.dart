import 'package:cloud_firestore/cloud_firestore.dart';
import '../Models/add_data_model.dart';


class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addItem(ItemModel item) async {
    await _db.collection('users').add(item.toMap());
  }
}
