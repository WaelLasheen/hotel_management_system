import 'bill.dart';
import 'booking.dart';
import 'customer.dart';
import 'room.dart';
import 'employee.dart';

class Management{
  List <Customer> _customers=[];
  List <Room> _rooms=[];
  List <Booking> _bookings=[];
  List <Employee> _employees=[];

  void Welcome(){
    print("Welcome to RAMADA HOTEL");
  }

  void addCustomer(Customer customer)=>
    _customers.add(customer);
  
  void addEmployee(Employee employee)=>
    _employees.add(employee);
  
  void addRoom(Room room)=>
    _rooms.add(room);
  
  void addBooking(Booking booking)=>
    _bookings.add(booking);

  
  void availableRooms(){
    _rooms.forEach((room) { 
      if(room.available)
        room.roomInfo();
    });
  }

  void endBooking(Booking booking){
    _bookings.remove(booking);
    booking.room.changeAvailability();
    _customers.remove(booking.customer);
    Bill bill = createBill(booking);
    bill.printBill();
  }

  Bill createBill(Booking booking){
        Bill bill=Bill(booking.id, booking);
        return bill;
  }

}