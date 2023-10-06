abstract class Person{
  String _fullName;
  int _id;
  int _age;
  String _phoneNum;
  Person(this._fullName,this._id,this._age,this._phoneNum);

  get fullName => _fullName;
  
  void Info(){
    print("Id : ${_id}");
    print("Name : ${_fullName}");
    print("Age : ${_age}");
    print("Phone : ${_phoneNum}");
  }
}