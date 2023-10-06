import 'person.dart';

class Customer extends Person{
  int numberOfIndividual;
  Customer(fullName,id,age,phoneNum,this.numberOfIndividual) : super(fullName, id, age, phoneNum);

  get fullName => super.fullName;

  void customerInfo(){
    Info();
  }
}