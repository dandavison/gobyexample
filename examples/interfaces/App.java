interface Geometry {
    public double area();
    public double perim();
}


class Circle implements Geometry {
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


class Square implements Geometry {
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
	System.out.println(geometry.area());
	System.out.println(geometry.perim());
    }

    public static void main(String[] args) {
	Square square = new Square(3.0, 4.0);
	Circle circle = new Circle(5.0);
	measure(square);
	measure(circle);
    }
}
