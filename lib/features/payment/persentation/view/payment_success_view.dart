import 'package:flutter/material.dart';

import 'package:travilo/features/payment/persentation/view/widgets/payment_sucsess_view_body.dart';


class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});
static const String routeName = 'paymentSucsess';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PaymentSucsessViewBody(),
    );
  }
}
