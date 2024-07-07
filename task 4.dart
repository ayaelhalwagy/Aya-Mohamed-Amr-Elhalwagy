interface class Serializable {
  toJson(){}
}

class User implements Serializable {
  String? name;
  int? age;

  User({required this.name,required this.age});

  @override
  String toJson() {
    return '{"name": "$name", "age": $age}';
  }
}


class Product implements Serializable {
  String? name;
  double? price;

  Product({required this.name,required this.price});

  @override
  String toJson() {
    return '{"name": "$name", "price": $price}';
  }
}

void main() {
  User u1 = User(name:"aya",age: 30);
  Product p1 = Product(name:"Smartphone",price: 25000);

  print(u1.toJson()); 
  print(p1.toJson()); 
}