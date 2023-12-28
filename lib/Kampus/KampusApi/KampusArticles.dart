class Etkinlik {
  int? id;
  String? etkinlikAdi;
  String? etkinlikYeri;
  int? etkinlikSaat;
  String? createdAt;
  String? updatedAt;

  Etkinlik(
      {this.id,
        this.etkinlikAdi,
        this.etkinlikYeri,
        this.etkinlikSaat,
        this.createdAt,
        this.updatedAt});

  Etkinlik.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    etkinlikAdi = json['etkinlik_adi'];
    etkinlikYeri = json['etkinlik_yeri'];
    etkinlikSaat = json['etkinlik_saat'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['etkinlik_adi'] = this.etkinlikAdi;
    data['etkinlik_yeri'] = this.etkinlikYeri;
    data['etkinlik_saat'] = this.etkinlikSaat;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}