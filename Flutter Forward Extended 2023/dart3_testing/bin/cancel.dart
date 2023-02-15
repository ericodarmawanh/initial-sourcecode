import 'payment_status.dart';

class Cancel extends PaymentStatus {
  final String message;

  Cancel({required super.paymentID, this.message = 'no cancelation message'});
}
