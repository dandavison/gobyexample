using System;

interface Geometry {
    double area();
    double perim();
}


class Circle : Geometry {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }
    public double area () {
        return Math.PI * this.radius * this.radius;
    }
    public double perim () {
        return Math.PI * 2 * this.radius;
    }
}


class Square : Geometry {
    private double width, height;

    public Square(double width, double height) {
        this.width = width;
        this.height = height;
    }
    public double area () {
        return this.width * this.height;
    }
    public double perim () {
        return 2 * (this.width + this.height);
    }
}


public class App {

    static void measure(Geometry geometry) {
        Console.WriteLine(geometry.area());
        Console.WriteLine(geometry.perim());
    }

    public static void Main() {
        Square square = new Square(3.0, 4.0);
        Circle circle = new Circle(5.0);
        measure(square);
        measure(circle);
    }
}
