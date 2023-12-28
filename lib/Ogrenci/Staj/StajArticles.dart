class Staj {
  int? id;
  String? stajYer;
  String? stajLocal;
  String? stajIletisim;
  String? createdAt;
  String? updatedAt;

  Staj(
      {this.id,
        this.stajYer,
        this.stajLocal,
        this.stajIletisim,
        this.createdAt,
        this.updatedAt});

  Staj.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stajYer = json['staj_yer'];
    stajLocal = json['staj_local'];
    stajIletisim = json['staj_iletisim'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['staj_yer'] = this.stajYer;
    data['staj_local'] = this.stajLocal;
    data['staj_iletisim'] = this.stajIletisim;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}