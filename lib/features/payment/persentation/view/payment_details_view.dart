import 'package:flutter/material.dart';
import 'package:travilo/features/payment/persentation/view/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});
static const String routeName = 'paymentDetails';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentDetailsViewBody(),
    );
  }
}