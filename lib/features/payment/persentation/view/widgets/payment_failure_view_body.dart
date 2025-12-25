import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';
import 'package:travilo/features/payment/persentation/view/widgets/custom_button_widget.dart';

class PaymentFailureViewBody extends StatelessWidget {
  const PaymentFailureViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        // Back button to go back to potentially correct payment
        leading: BackButton(color: Colors.white, onPressed: () {
           Navigator.pop(context); 
        }),
        title: const Text('Payment Issue', style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
               // Failure Icon
               Stack(
                 alignment: Alignment.center,
                 children: [
                   Container(
                     width: 80,
                     height: 80,
                     decoration: const BoxDecoration(
                       color: Colors.white, 
                       shape: BoxShape.circle,
                     ),
                     child: const Icon(Icons.credit_card, color: Colors.black, size: 40),
                   ),
                    Positioned(
                     bottom: 0,
                     right: 0,
                     child: Container(
                       padding: const EdgeInsets.all(4),
                       decoration: const BoxDecoration(color: Color(0xFF0D1015), shape: BoxShape.circle),
                       child: const Icon(Icons.error, color: Colors.orange, size: 24),
                     ),
                   )
                 ],
               ),
               const SizedBox(height: 24),
               
               const Text(
                 'Payment Unsuccessful!',
                 style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
               ),
               const SizedBox(height: 12),
               const Text(
                 'We were unable to charge your Visa ending in *** 1234. Please check your card details to try different method.',
                 textAlign: TextAlign.center,
                 style: TextStyle(color: Colors.grey, fontSize: 14),
               ),
               const SizedBox(height: 32),

                // Warning Box
               Container(
                 padding: const EdgeInsets.all(16),
                 decoration: BoxDecoration(
                   color: AppColors.cardColor,
                   borderRadius: BorderRadius.circular(16),
                   border: Border.all(color: const Color(0xFF007BFF), width: 1), // Blue border as per design
                 ),
                 child: Row(
                   children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80',
                          width: 50, height: 50, fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('BOOKING ON HOLD', style: TextStyle(color: Color(0xFF007BFF), fontWeight: FontWeight.bold, fontSize: 12)),
                          SizedBox(height: 4),
                          Text('Oceanview Resort &\nSpa', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                           SizedBox(height: 4),
                          Text('3 Night • 2 Guests', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      )
                   ],
                 ),
               ),
               
               const Spacer(),
               CustomButtonWidget(
                 text: 'Try Payment Again',
                 onPressed: () {
                   Navigator.pop(context); // Go back to try again
                 },
               ),
               const SizedBox(height: 16),
               CustomButtonWidget(
                 text: 'Change Payment Method',
                 isPrimary: false, 
                 onPressed: () {
                    // Navigate to method selection
                    Navigator.pop(context);
                    Navigator.pop(context); // Crude pop back
                 },
               ),
               const SizedBox(height: 24),
               GestureDetector(
                onTap: () {},
                child: const Text('Return to Home', style: TextStyle(color: Color(0xFF007BFF), fontSize: 14)),
              ),
               const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
}}