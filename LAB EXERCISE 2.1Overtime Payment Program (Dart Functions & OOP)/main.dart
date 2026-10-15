import 'myLib.dart';

void main() {
  Employee emp = Employee('Ali', 5000, 10, 7);

  double overtimePay = emp.calculateOvertimePay();
  double totalSalary = emp.calculateTotalSalary();

  print('Employee: ${emp.name}');
  print('Overtime Pay = \$$overtimePay USD');
  print('Total Salary = \$$totalSalary USD');
}
