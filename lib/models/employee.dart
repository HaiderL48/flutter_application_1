class Employee {
  int? id;
  String? email;
  // ignore: non_constant_identifier_names
  String? first_name;
  // ignore: non_constant_identifier_names
  String? last_name;
  String? avatar;

  // ignore: non_constant_identifier_names
  Employee({this.id, this.email, this.first_name, this.last_name, this.avatar});

  Employee.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    email = data['email'];
    first_name = data['first_name'];
    last_name = data['last_name'];
    avatar = data['avatar'];
  }
}
