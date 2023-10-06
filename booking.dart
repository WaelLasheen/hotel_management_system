import 'customer.dart';
import 'room.dart';

class Booking{
  int _id;
  Customer _customer;
  Room _room;
  DateTime _packUpDate;
  int _numberOfDays;
  bool _withFood;

  Booking(this._id,this._customer,this._room,this._packUpDate,this._numberOfDays,this._withFood){
    print('Your booking has been completed successfully');
    _room.changeAvailability();
  }

  get id => _id;
  get customer => _customer;
  get room => _room;
  get packUpDate => _packUpDate;
  get numberOfDays => _numberOfDays;
  

  double CalculateTotalPrice(){
    double totalPrice = CalculateRoomPrice() + CalculateFoodPrice()+ calculateServiceTax();
    return totalPrice;
  }

  int CalculateRoomPrice(){
    int price=_room.pricePerDay;
    return price * _numberOfDays;
  }

  int CalculateFoodPrice(){
    int foodPricePerDay=500;
    if(_withFood)
      return foodPricePerDay * _numberOfDays;
    return 0;
  }

  double calculateServiceTax(){
    int service = CalculateRoomPrice() + CalculateFoodPrice();
    double ServiceTax = 0.02;
    return service * ServiceTax;
  }
}