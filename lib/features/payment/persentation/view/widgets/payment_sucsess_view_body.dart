import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';

class PaymentSucsessViewBody extends StatelessWidget {
  const PaymentSucsessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const Align(alignment: Alignment.topRight, child: Icon(Icons.signal_cellular_alt, color: Colors.white, size: 16)), // Mock status bar elements if needed, but SafeArea handles it.
               const SizedBox(height: 40),
               
               // Success Icon
               Container(
                 width: 80,
                 height: 80,
                 decoration: const BoxDecoration(
                   color: Color(0xFF007BFF), 
                   shape: BoxShape.circle,
                 ),
                 child: const Icon(Icons.check, color: Colors.white, size: 48),
               ),
               const SizedBox(height: 24),
               
               const Text(
                 'Payment Successful!',
                 style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
               ),
               const SizedBox(height: 12),
               const Text(
                 'Your booking for Paris, France is confirmed. We have sent the receipt to your email.',
                 textAlign: TextAlign.center,
                 style: TextStyle(color: Colors.grey, fontSize: 14),
               ),
               const SizedBox(height: 32),
               
               // Receipt Box
               Container(
                 padding: const EdgeInsets.all(16),
                 decoration: BoxDecoration(
                   color: AppColors.cardColor,
                   borderRadius: BorderRadius.circular(16),
                 ),
                 child: Column(
                   children: [
                     const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('TRANSACTION ID', style: TextStyle(color: Colors.grey, fontSize: 12)),
                         Text('#TRX-8859201', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                       ],
                     ),
                     const SizedBox(height: 16),
                     Row(
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
                              Text('Standard king', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                              SizedBox(height: 4),
                              Text('Dec 12 - 15', style: TextStyle(color: Colors.grey, fontSize: 12)),
                               SizedBox(height: 2),
                              Text('2 Guests', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          )
                       ],
                     ),
                     const SizedBox(height: 16),
                     const Divider(color: Colors.white10),
                      const SizedBox(height: 16),
                     const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Total Paid', style: TextStyle(color: Colors.white, fontSize: 14)),
                              SizedBox(height: 4),
                              Row(children: [Icon(Icons.check_circle, size: 12, color: Color(0xFF007BFF)), SizedBox(width: 4), Text('Paid via Card', style: TextStyle(color: Color(0xFF007BFF), fontSize: 10))])
                           ],
                         ),
                         Text('\$680.00', style: TextStyle(color: Color(0xFF007BFF), fontSize: 24, fontWeight: FontWeight.bold)),
                       ],
                     )
                   ],
                 ),
               ),
               
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Navigate to Home or Failure for test
                //     Navigator.of(context).pushAndRemoveUntil(
                 //         MaterialPageRoute(builder: (context) => const PaymentFailurePage()), // Redirecting to Failure purely for verification flow as requested "Verify UI Matches Design" allow exploring all pages.
                     //      (Route<dynamic> route) => false);
                  },
                  child: const Text('Return to Home', style: TextStyle(color: Color(0xFF007BFF), fontSize: 14)),
                ),
                const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}