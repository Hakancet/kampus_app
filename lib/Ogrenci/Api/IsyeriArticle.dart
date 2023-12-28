class Local {
  int? id;
  String? isYeri;
  String? isLocal;
  int? isNumara;
  String? createdAt;
  String? updatedAt;

  Local(
      {this.id,
        this.isYeri,
        this.isLocal,
        this.isNumara,
        this.createdAt,
        this.updatedAt});

  Local.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isYeri = json['is_yeri'];
    isLocal = json['is_local'];
    isNumara = json['is_numara'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_yeri'] = this.isYeri;
    data['is_local'] = this.isLocal;
    data['is_numara'] = this.isNumara;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}