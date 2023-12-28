import 'package:cloud_firestore/cloud_firestore.dart';

class KonserService {
  // get ile koleksiyon oluştur

  final CollectionReference konser =
  FirebaseFirestore.instance.collection('sosyal').doc('sosyalId').collection('konser');

  // create metodu ile bilgileri oluşturma

  Future<void> addEtkinlik (String sanatci, String konserYer, String konserSaat){
    return konser.add({
      'sanatcı' : sanatci,
      'konserYer' : konserYer,
      'konserSaat' : konserSaat,
      'timestamp' : Timestamp.now(),
    });
  }

  // read metodu ile anlık sıralı okuma
  Stream<QuerySnapshot> getKonser(){
    final KonserStream = konser.orderBy('timestamp', descending: true).snapshots();

    return KonserStream;
  }
}