import 'package:cloud_firestore/cloud_firestore.dart';

class IndirimServices {
  // get ile koleksiyon oluştur

  final CollectionReference indirim =
  FirebaseFirestore.instance.collection('yemek').doc('yemekId').collection('indirim');

  // create metodu ile bilgileri oluşturma

  Future<void> addIndirim (String restoranAdi, String restoranYer, String restoranSaat , String indirimOran){
    return indirim.add({
      'restoranAdi' : restoranAdi,
      'restoranYer' : restoranYer,
      'restoranSaat' : restoranSaat,
      'indirimOran' : indirimOran,
      'timestamp' : Timestamp.now(),
    });
  }

  // read metodu ile anlık sıralı okuma
  Stream<QuerySnapshot> getIndirim(){
    final IndirimStream = indirim.orderBy('timestamp', descending: true).snapshots();

    return IndirimStream;
  }
}