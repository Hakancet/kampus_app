class burs {
  int? id;
  String? bursYeri;
  int? bursMiktar;
  int? bursAy;
  String? createdAt;
  String? updatedAt;

  burs(
      {this.id,
        this.bursYeri,
        this.bursMiktar,
        this.bursAy,
        this.createdAt,
        this.updatedAt});

  burs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bursYeri = json['burs_yeri'];
    bursMiktar = json['burs_miktar'];
    bursAy = json['burs_ay'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['burs_yeri'] = this.bursYeri;
    data['burs_miktar'] = this.bursMiktar;
    data['burs_ay'] = this.bursAy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}