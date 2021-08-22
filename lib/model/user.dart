class User {
  String id;
  String name;
  String email;
  String password;
  bool isAdmin;
  bool isFisio;
  bool isRecep;
  DateTime createdAt;
  DateTime updatedAt;

  User(this.id, this.name, this.email, this.password, this.isAdmin,
      this.isFisio, this.isRecep, this.createdAt, this.updatedAt);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['isAdmin'] = this.isAdmin;
    data['isFisio'] = this.isFisio;
    data['isRecep'] = this.isRecep;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
