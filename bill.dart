import 'booking.dart';

class Bill{
  int _id;
  Booking _booking;
  Bill(this._id,this._booking);

  void printBill(){
    var booking = _booking;
    print("Bill ID : ${_id}");
    print("Booking ID : ${booking.id}");
    print("customer Name : ${booking.customer.fullName}");
    print("Price for one day : ${booking.room.pricePerDay} L.E");
    print("Number of booked days : ${booking.numberOfDays} days");
    print("Pack up date : ${booking.packUpDate}");
    print("Total price : ${booking.CalculateTotalPrice()}");
    print("   > ${booking.CalculateRoomPrice()} for Room");
    print("   > ${booking.CalculateFoodPrice()} for Food");
    print("   > ${booking.calculateServiceTax()} for Service Tax");
  }
}