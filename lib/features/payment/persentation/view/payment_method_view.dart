import 'package:flutter/material.dart';
import 'package:travilo/features/payment/persentation/view/widgets/payment_method_view_body.dart';



class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});
static const String routeName = 'paymentMethod';
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PaymentMethodViewBody(),
    );
  }
}
