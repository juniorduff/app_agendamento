class Patient {
  String id;
  String name;
  String email;
  String profession;
  String birthDay;
  String age;
  String cpf;
  String phone;
  String city;
  String state;
  String street;
  String complement;
  String cep;
  String houseNumber;
  String neighborhood;
  DateTime createdAt;
  DateTime updatedAt;

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'email': this.email,
      'profession': this.profession,
      'birthDay': this.birthDay,
      'age': this.age,
      'cpf': this.cpf,
      'phone': this.phone,
      'city': this.city,
      'state': this.state,
      'street': this.street,
      'complement': this.complement,
      'cep': this.cep,
      'houseNumber': this.houseNumber,
      'neighborhood': this.neighborhood,
      'createdAt': this.createdAt,
      'updatedAt': this.updatedAt,
    };
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    return Patient(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      profession: map['profession'] as String,
      birthDay: map['birthDay'] as String,
      age: map['age'] as String,
      cpf: map['cpf'] as String,
      phone: map['phone'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      street: map['street'] as String,
      complement: map['complement'] as String,
      cep: map['cep'] as String,
      houseNumber: map['houseNumber'] as String,
      neighborhood: map['neighborhood'] as String,
      createdAt: map['createdAt'] as DateTime,
      updatedAt: map['updatedAt'] as DateTime,
    );
  }

  Patient({
    required this.id,
    required this.name,
    required this.email,
    required this.profession,
    required this.birthDay,
    required this.age,
    required this.cpf,
    required this.phone,
    required this.city,
    required this.state,
    required this.street,
    required this.complement,
    required this.cep,
    required this.houseNumber,
    required this.neighborhood,
    required this.createdAt,
    required this.updatedAt,
  });
}
