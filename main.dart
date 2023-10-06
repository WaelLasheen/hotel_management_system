import 'booking.dart';
import 'customer.dart';
import 'employee.dart';
import 'hotelManagement.dart';
import 'room.dart';

void main(List<String> args) {
  Customer Wael = Customer('Wael Lasheen', 251, 21, '012345678910',3);
  Employee mohammed = Employee('Mohamed Amr', 7291, 36, '01298798711', 5500);
  Room room207 = Room(207, 3, 4.5, 800, true, 7);
  Room room117 = Room(117, 2, 4.3, 750, false, 4);
  Booking booking113 = Booking(113, Wael, room207, DateTime.now(), 5, true);
  Management system = Management();
  system..Welcome()
  ..addRoom(room207)
  ..addRoom(room117)
  ..addEmployee(mohammed)
  ..addCustomer(Wael)
  ..addBooking(booking113);
  print('-'*20);
  system.endBooking(booking113);
  print('-'*20);
  system.availableRooms();

}