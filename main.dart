import 'dart:math';


void task1(){
  var fullName = 'Zarshedjon Nasimov', age=19,
      university='NewUU',
      degree='bachelor';


  print('Hello, my name is $fullName. I am $age.\n'
      'And, I am $degree degree student at $university');
}

bool task2(int num){

  if (num % 2 == 0) return true;
  else return false;

}

void task3(){
  List odds = [], evens = [];

  for (int i=1; i<=100; i++){
    if (i % 2 == 0) evens.add(i);
    else odds.add(i);
  }

  print('Odds: $odds.\nEvens: $evens.');

}

List task4(List a){
  List b = [];

  for (final el in a){
    b.add(el*el);
  }

  return b;
}

List task5(int num){
  List divs = [];

  for (int n = num; n>1; n--){
    if (num % n == 0) divs.add(n);
  }

  return divs;
}

List task6(List a, List b){
  Set commonElements = a.toSet().intersection(b.toSet());
  return commonElements.toList();
}


bool task7(int num){
  for (int i = 2; i<=sqrt(num).toInt(); i++){
    if (num % i == 0) return false;
  }
  return true;
}

List<int> task8(List<int> nums){
  List<int> result = nums.toSet().toList();
  return result;
}

int task9Loop(int num){
  int a = 0, b = 1;
  int c;
  if (num <=1) return num;
  for (int i = 2; i<=num; i++){
    c = a + b;
    a = b;
    b = c;
  }

  return b;
}

int task9Recursion(int num){
  if (num <=1 ) return num;
  return task9Recursion(num - 1) + task9Recursion(num - 2);
}

List<int> fibs = [0, 1];
int task10(int num, ){
  if (fibs.length<num+1) fibs.add(task10(num - 1) + task10(num - 2));
  return fibs[num];

}
bool isAlphaNumeric(String s){
  String nums = '0123456789';
  for (int i=0; i<s.length; i++){
    if (nums.contains(s[i])) return true;
  }
  return false;
}

bool containsSpChars(String s){
  String spChars = '\';,.?<>=+)(!@#\$%^&*\\/';
  for (int i=0; i<s.length; i++){
    if (spChars.contains(s[i])) return true;
  }
  return false;
}

String task11(String password){
  if (password.length < 8)
    return 'weak';
  else if (isAlphaNumeric(password)) {
    if (containsSpChars(password)) return 'strong';
    else return 'normal';
  } else if (containsSpChars(password)) return 'normal';
  else return 'weak';

}

void task12(int rows, int cols){
  for (int i = 1; i<=rows; i++){
    print('|  '*(cols+1));
    print('--- '*cols);
  }
}

// Classes task 1
class Animal {
  String name;
  int age;
  Animal(this.name, this.age);
  void describe() {
    print('This is a $name and it is $age years old.');
  }
}

// Classes task 2
class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void describe() {
    print('This a $make $model car of $year year model.');
  }
}

// Classes task 3
class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  void describe() {
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
  }
}

// Classes task 4
class Movie {
  String title;
  String director;
  int runtime;

  Movie(this.title, this.director, this.runtime);

  void describe() {
    print('Title: $title');
    print('Director: $director');
    print('Runtime: $runtime minutes');
  }
}

// Classes task 5
class Song {
  String title;
  String artist;
  Duration duration;

  Song(this.title, this.artist, this.duration);

  void describe() {
    print('Title: $title');
    print('Artist: $artist');
    print('Duration: ${duration.inMinutes} minutes ${duration.inSeconds.remainder(60)} seconds');
  }
}

// Mixins task 1
mixin Fly {
  void fly() {
    print('Flying...');
  }
}
class Bird with Fly {}

// Mixins task 2
mixin Swim{
  void swim() {
    print('Swimming...');
  }
}

class Fish with Swim {}

// Mixins task 3
mixin Run{
  void run() {
    print('Running...');
  }
}

class Dog with Run {}

// Mixins task 4
mixin Climb{
  void climb(){
    print('Climbing...');
  }
}

class Monkey with Climb {}

// Mixins task 5
mixin Jump{
  void jump(){
    print('Jumping...');
  }
}

class Kangaroo with Jump {}

// Abstract and Concrete Classes task 1
abstract class Vehicle {
  double speed();
}
class Car1 extends Vehicle {
  double maxSpeed;
  Car1(this.maxSpeed);
  @override
  double speed() {
    return maxSpeed;
  }
}

class Bike extends Vehicle {
  double maxSpeed;
  Bike(this.maxSpeed);
  @override
  double speed() {
    return maxSpeed;
  }
}

// Abstract and Concrete Classes task 2
abstract class Instrument{
  void play();
}

class Guitar extends Instrument{
  @override
  void play(){
    print('Guitar is playing...');
  }
}

class Piano extends Instrument{
  @override
  void play(){
    print('Piano is playing...');
  }
}

// Abstract and Concrete Classes task 3
abstract class Device{
  void powerOn(){}
}

class Laptop extends Device{
  @override
  void powerOn(){
    print('Laptop is powered on...');
  }
}

class Smartphone extends Device{
  @override
  void powerOn(){
    print('Smartphone is powered on...');
  }
}

void main() {

//   Task 1
  task1();

//   Task 2
  if (task2(5)) print('5 is even');
  else print('5 is odd');

//   Task 3
  task3();

//   Task 4
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print(task4(a));

//   Task 5
  int num = 5;
  print('Divisors of $num: ${task5(num)}');

//   Task 6
  List<int> a_l = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b_l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  print('Common elements of a and b: ${task6(a_l, b_l)}');

//   Task 7
  int num1 = 17;
  print('$num1 is prime: ${task7(num1)}');


//   Task 8
  List<int> nums = [1, 1, 2, 3];
  print('Distinct nums: ${task8(nums)}');

//   Task 9
  int num2 = 10;
  print('Fibonacci number $num2 is ${task9Loop(num2)} == ${task9Recursion(num2)}.');

//   Task 10
  int num3 = 50;
  print('Fibonacci number $num3 is ${task10(num3)}.');

//   Task 11
  String weak_password = 'Hello', normal_password = 'Hello1234', strong_password = 'Hello#world12';
  print('$weak_password is ${task11(weak_password)}\n'
      '$normal_password is ${task11(normal_password)}\n'
      '$strong_password is ${task11(strong_password)}');

//   Task 12
  task12(3, 3);

//   Classes task 1
  var animal = Animal('Dog', 5);
  animal.describe();

//   Classes task 2
  var car = Car('Toyota', 'Camry', 2020);
  car.describe();

//   Classes task 3
  var book = Book('To Kill a Mockingbird', 'Harper Lee', 281);
  book.describe();

//   Classes task 4
  var movie = Movie('Inception', 'Christopher Nolan', 148);
  movie.describe();

//   Classes task 5
  var song = Song('Bohemian Rhapsody', 'Queen', Duration(minutes: 5, seconds: 55));
  song.describe();

//   Mixins task 1
  var bird = Bird();
  bird.fly();

//   Mixins task 2
  var fish = Fish();
  fish.swim();

//   Mixins task 3
  var dog = Dog();
  dog.run();

//   Mixins task 4
  var monkey = Monkey();
  monkey.climb();

//   Mixins task 5
  var kangaroo = Kangaroo();
  kangaroo.jump();

//   Abstract and Concrete Classes task 1
  var car1 = Car1(200);
  print("Car speed: ${car1.speed()} km/h");
  var bike = Bike(30);
  print("Bike speed: ${bike.speed()} km/h");

//   Abstract and Concrete Classes task 2
  var guitar = Guitar();
  guitar.play();
  var piano = Piano();
  piano.play();

//   Abstract and Concrete Classes task 3
  var laptop = Laptop();
  laptop.powerOn();
  var smartphone = Smartphone();
  smartphone.powerOn();

}
