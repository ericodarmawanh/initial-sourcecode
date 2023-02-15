import 'payment_status.dart';

void main(List<String> args) {
  PaymentStatus status = Pending(paymentID: '123456');

  switch (status) {
    case Success():
      print('success');
    case Failed(message: String message):
      print('failed: $message');
    case Pending(:String message):
      print('pending: $message');
  }
}