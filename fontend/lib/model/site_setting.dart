class SiteSetting {
  int id;
  String company_name;
  String web_title;
  String address;
  String logo;
  String email;
  String short_name;
  String icon;
  String hotline;
  String paymentinfor;
  String lazada;
  String shopee;
  String facebook;
  String memory;
  
  SiteSetting({
    required this.id,
    required this.company_name,
    this.web_title = "",
    this.address = "",
    required this.logo,
    this.email = '',
    this.short_name = '',
    this.icon = '',
    this.hotline = '',
    this.paymentinfor = '',
    this.lazada = '',
    this.facebook = '',
    this.shopee = '',
    this.memory = '',
  });

  // Tao phuong thuc tu JSON
  factory SiteSetting.fromJson(Map<String, dynamic> json){
    return SiteSetting(id: json['id'], company_name: json['company_name'],  
    web_title: json['web_title'] ?? '',
    logo: json['logo'],
    address: json['address'] ?? '',
    email: json['email'] ?? '',
    short_name: json['short_name'] ?? '',
    icon: json['icon'] ?? '',
    hotline: json['hotline'] ?? '',
    paymentinfor: json['paymentinfor'] ?? '',
    lazada: json['lazada'] ?? '',
    shopee: json['shopee'] ?? '',
    facebook: json['facebook'] ?? '',
    memory: json['memory'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'company_name': company_name,
      'web_title': web_title,
      'address': address,
      'logo': logo,
      'email': email,
      'short_name': short_name,
      'icon': icon,
      'hotline': hotline,
      'paymentinfor': paymentinfor,
      'lazada': lazada,
      'shopee': shopee,
      'facebook': id,
      'memory': memory,
    };
  }

  SiteSetting copWith({
    int? id,
    String? company_name,
    String? web_title,
    String? address,
    String? logo,
    String? email,
    String? short_name,
    String? icon,
    String? hotline,
    String? paymentinfor,
    String? lazada,
    String? shopee,
    String? facebook,
    String? memory,
    }) {
      return SiteSetting(id: id ?? this.id,
      company_name: company_name ?? this.company_name, 
      logo: logo ?? this.logo,
      web_title: web_title ?? this.web_title,
      address: address ?? this.address,
      email: email ?? this.email,
      short_name: short_name ?? this.short_name,
      icon: icon ?? this.icon,
      hotline: hotline ?? this.hotline,
      paymentinfor: paymentinfor ?? this.paymentinfor,
      lazada: lazada ?? this.lazada,
      shopee: shopee ?? this.shopee,
      facebook: facebook ?? this.facebook,
      memory: memory ?? this.memory,
      );
    }
}