abstract class PaymentStatus {
  final String paymentID;

  PaymentStatus({required this.paymentID});
}

class Success extends PaymentStatus {
  Success({required super.paymentID});
}

class Failed extends PaymentStatus {
  final String message;

  Failed({required super.paymentID, this.message = 'no error messgae'});
}

class Pending extends PaymentStatus {
  final String message;

  Pending({required super.paymentID, this.message = 'no pending message'});
}

// class Cancel extends PaymentStatus {
//   final String message;

//   Cancel({required super.paymentID, this.message = 'no cancelation message'});
// }
