import 'package:flutter/material.dart';
import 'package:travilo/core/widgets/custom_button.dart';
import 'package:travilo/features/payment/persentation/view/payment_success_view.dart';
import 'package:travilo/features/payment/persentation/view/widgets/booking_summary_card.dart';
import 'package:travilo/features/payment/persentation/view/widgets/payment_option_card.dart';
import 'package:travilo/features/payment/persentation/view/widgets/sub_total_price_widget.dart';
import 'package:travilo/features/payment/persentation/view/widgets/switch_widget.dart';
import 'package:travilo/features/payment/persentation/view/widgets/text_encruption.dart';
import 'package:travilo/features/payment/persentation/view/widgets/total_amount_widget.dart';

class PaymentMethodViewBody extends StatelessWidget {
  const PaymentMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          'Review Booking',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Payment Method
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Payment Method',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                PaymentOptionCard(
                  label: 'Card',
                  isSelected: false,
                  onTap: () {
                    Navigator.pop(context); // Go back to Card page
                  },
                ),
                const SizedBox(width: 16),
                PaymentOptionCard(
                  label: 'PayPal',
                  isSelected: true,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Total Amount Large
            TotalAmoundWidget(),
            const SizedBox(height: 24),

            // Hotel Summary Large
            const BookingSummaryCard(
              hotelName: 'Oceanview Resort & Spa',
              location:
                  'Dec 12-15 • 3 Nights', // Using location slot for subtitle
              imageUrl:
                  'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
              price: ' ', // Hide price logic if needed or reuse
              compact: false, // Large card
            ),
            const SizedBox(height: 24),

            // Price Breakdown header
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Price Breakdown',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),

            SubTotalPriceWidget(),
            const SizedBox(height: 24),

            // Save card (Repeated in design)
            SwitchWidget(),
            const SizedBox(height: 8),
            TextEncryption(),

            const SizedBox(height: 32),
            CustomButton(
              text: 'Pay Now   \$680.00',
              onTap: () {
                Navigator.of(context).pushNamed(PaymentSuccessView.routeName);
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
