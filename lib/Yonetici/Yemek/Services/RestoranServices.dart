import 'package:cloud_firestore/cloud_firestore.dart';

class RestoranServices {
  // get ile koleksiyon oluştur

  final CollectionReference restoran =
  FirebaseFirestore.instance.collection('yemek').doc('yemekId').collection('restoran');

  // create metodu ile bilgileri oluşturma

  Future<void> addRestoran (String restoranAdi, String restoranYer, String restoranSaat){
    return restoran.add({
      'restoranAdi' : restoranAdi,
      'restoranYer' : restoranYer,
      'restoranSaat' : restoranSaat,
      'timestamp' : Timestamp.now(),
    });
  }

  // read metodu ile anlık sıralı okuma
  Stream<QuerySnapshot> getRestoran(){
    final RestoranStream = restoran.orderBy('timestamp', descending: true).snapshots();

    return RestoranStream;
  }
}