import 'person.dart';

class Employee extends Person{
  int _salary;
  Employee(super.fullName, super.id, super.age, super.phoneNum,this._salary);

  void emloyeeInfo(){
    Info();
    print("Salary : ${_salary} L.E");
  }

}