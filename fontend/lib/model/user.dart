  class User {
  

    final String full_name;
    final String email;
    final String password;
    final String description;
    final String phone;
    final String address;
    final int code;
    final int global_id;
    final String username;
    final String email_verified_at;
    final String photo;
    final int ship_id;
    final int ugroup_id;
    final String role;
    final int budget;
    final int totalpoint;
    final int totalrevenue;
    final String taxcode;
    final String taxname;
    final String taxaddress;
    final String status;

    User({
    

      this.username = '',
      this.code = 0,
      this.global_id = 0,
      this.role = 'customer',
      this.email_verified_at = '',
      this.ship_id = 0,
      this.ugroup_id = 0,
      this.budget = 0,
      this.totalpoint = 0,
      this.totalrevenue = 0,
      this.taxcode = '',
      this.taxname = '',
      this.taxaddress = '',
      this.status = 'active',
      required this.full_name,
      required this.email,
      required this.password,
      this.description = '',
      required this.phone,
      required this.address,
      this.photo = '',
    });

    Map<String, dynamic> toJson() {
      return {
      

        'full_name': full_name,
        'description': description,
        'phone': phone,
        'email': email,
        'password': password,
        'address': address,
        'code': code,
        'global_id': global_id,
        'username': username,
        'email_verified_at': email_verified_at,
        'photo': photo,
        'ship_id': ship_id,
        'ugroup_id': ugroup_id,
        'role': role,
        'budget': budget,
        'totalpoint': totalpoint,
        'totalrevenue': totalrevenue,
        'taxcode': taxcode,
        'taxname': taxname,
        'taxaddress': taxaddress,
        'status': status,
      };
    }

    // Phương thức khởi tạo User từ JSON
    factory User.fromJson(Map<String, dynamic> json) {
      return User(
      

        full_name: json['full_name'],
        email: json['email'],
        password: json['password'],
        description: json['description'] ?? '',
        phone: json['phone'],
        address: json['address'],
        code: json['code'] ?? 0,
        global_id: json['global_id'] ?? 0,
        username: json['username'],
        email_verified_at: json['email_verified_at'] ?? '',
        photo: json['photo'],
        ship_id: json['ship_id'] ?? 0,
        ugroup_id: json['ugroup_id'],
        role: json['role'],
        budget: json['budget'] ?? 0,
        totalpoint: json['totalpoint'] ?? 0,
        totalrevenue: json['totalrevenue'] ?? 0,
        taxcode: json['taxcode'] ?? '',
        taxname: json['taxname'] ?? '',
        taxaddress: json['taxaddress'] ?? '',
        status: json['status'],
      );
    }
  }