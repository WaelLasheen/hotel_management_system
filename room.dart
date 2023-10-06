class Room{
  int _numberOfBed;
  int _pricePerDay;
  double _rate;
  bool _available;
  int _id;
  int _floor;
  Room(this._id,this._numberOfBed,this._rate,this._pricePerDay,this._available,this._floor);

  get pricePerDay => _pricePerDay;
  get available => _available;

  void roomInfo(){
    print("Room Id : ${_id}");
    print("Floor : ${_floor}");
    print("Room Rate : ${_rate} Stars");
    print("Room Price For Day : ${_pricePerDay}");
    print("Number Of Beds : ${_numberOfBed}");
    if(_available)
      print("Room State : Avilable");
    else
      print("Room State : Booked");
  }

  void changeAvailability(){
    _available = ! _available;
  }
}