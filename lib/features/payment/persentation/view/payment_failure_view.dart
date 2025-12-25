import 'package:flutter/material.dart';

import 'package:travilo/features/payment/persentation/view/widgets/payment_failure_view_body.dart';


class PaymentFailureView extends StatelessWidget {
  const PaymentFailureView({super.key});
static const String routeName = 'paymentFauilre';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PaymentFailureViewBody() ,
    );
  }
}
