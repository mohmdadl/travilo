import 'package:flutter/material.dart';
import 'package:travilo/core/widgets/custom_button.dart';
import 'package:travilo/features/payment/persentation/view/widgets/booking_summary_card.dart';
import 'package:travilo/features/payment/persentation/view/widgets/custom_text_field.dart';
import 'package:travilo/features/payment/persentation/view/payment_method_view.dart';
import 'package:travilo/features/payment/persentation/view/widgets/payment_option_card.dart';
import 'package:travilo/features/payment/persentation/view/widgets/switch_widget.dart';
import 'package:travilo/features/payment/persentation/view/widgets/text_encruption.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1015),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Summary Card (Compact)
            const BookingSummaryCard(
              hotelName:
                  'Standard king', // Image text says "Standard king" on this page
              location: 'Free Wifi - 32m²', // Subtitles
              imageUrl:
                  'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80',
              price: '\$200 / night',
              compact: true,
              rating: ' ', // Hide rating logic if compact
            ),
            const SizedBox(height: 16),

            // Mini Breakdown
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  _buildMiniRow('Subtotal(3Nights)', '\$600.00'),
                  const SizedBox(height: 8),
                  _buildMiniRow('Taxes & Fees', '\$72.00'),
                  const SizedBox(height: 8),
                  _buildMiniRow('Total Due', '\$680.00', isTotal: true),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Payment Method
            const Text(
              'Payment Method',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                PaymentOptionCard(
                  label: 'Card',
                  isSelected: true,
                  onTap: () {},
                ),
                const SizedBox(width: 16),
                PaymentOptionCard(
                  label: 'PayPal',
                  isSelected: false,
                  onTap: () {
                    // Navigate to Payment Method Page (PayPal view)
                     Navigator.of(context).pushNamed(PaymentMethodView.routeName);
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Form
            const CustomTextFieldWidget(
              label: 'CardNumber',
              hint: '0000 0000 0000 0000',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldWidget(
                    label: 'Expiry Date',
                    hint: 'MM/YY',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomTextFieldWidget(
                    label: 'CVV',
                    hint: '123',
                    isObscure: true,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const CustomTextFieldWidget(
              label: 'CardholderName',
              hint: 'John Doe',
            ),
            const SizedBox(height: 24),

            // Save card
            SwitchWidget(),
            const SizedBox(height: 8),
            TextEncryption(),
            const SizedBox(height: 32),

            CustomButton(
              text: 'Pay Now   \$680.00',
              onTap: () {
                  Navigator.of(context).pushNamed(PaymentMethodView.routeName);
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildMiniRow(String label, String amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(color: isTotal ? Colors.grey : Colors.grey[600], fontWeight: isTotal ? FontWeight.bold : FontWeight.normal)),
        Text(amount, style: TextStyle(color: isTotal ? Colors.white : Colors.grey[400], fontWeight: isTotal ? FontWeight.bold : FontWeight.normal)),
      ],
    );
  }
}



