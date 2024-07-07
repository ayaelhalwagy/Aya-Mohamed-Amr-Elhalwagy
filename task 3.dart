abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle({required this.width,required this.height});

  @override
  double area() {
    return width * height;
  }
}

void main() {
  Circle c1 = Circle(radius: 5);
  Rectangle r1 = Rectangle(width: 3, height: 4);
  print(c1.area());
  print(r1.area());  
}