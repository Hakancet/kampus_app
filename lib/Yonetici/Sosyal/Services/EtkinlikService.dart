import 'package:cloud_firestore/cloud_firestore.dart';

class EtkinlikService{

  // get ile koleksiyon oluştur

  final CollectionReference etkinlik =
  FirebaseFirestore.instance.collection('sosyal').doc('sosyalId').collection('etkinlik');

  // create metodu ile bilgileri oluşturma

  Future<void> addEtkinlik (String etkinlikAd, String etkinlikYer, String etkinlikSaat , String etkinlikDetay){
    return etkinlik.add({
      'etkinlikAd' : etkinlikAd,
      'etkinlikYer' : etkinlikYer,
      'etkinlikSaat' : etkinlikSaat,
      'etkinlikDetay' : etkinlikDetay,
      'timestamp' : Timestamp.now(),
    });
  }

  // read metodu ile anlık sıralı okuma

  Stream<QuerySnapshot> getEtkinlik(){
    final EtkinlikStream = etkinlik.orderBy('timestamp', descending: true).snapshots();

    return EtkinlikStream;
  }

  // update metodu eklenmesi



}