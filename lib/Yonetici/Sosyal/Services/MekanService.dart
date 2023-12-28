import 'package:cloud_firestore/cloud_firestore.dart';

class MekanService {
  // get ile koleksiyon oluştur

  final CollectionReference mekan =
  FirebaseFirestore.instance.collection('sosyal').doc('sosyalId').collection('mekan');

  // create metodu ile bilgileri oluşturma

  Future<void> addMekan (String mekanAdi, String mekanYer, String mekanSaat){
    return mekan.add({
      'mekanAdi' : mekanAdi,
      'mekanYer' : mekanYer,
      'mekanSaat' : mekanSaat,
      'timestamp' : Timestamp.now(),
    });
  }

  // read metodu ile anlık sıralı okuma
  Stream<QuerySnapshot> getMekan(){
    final MekanStream = mekan.orderBy('timestamp', descending: true).snapshots();

    return MekanStream;
  }
}