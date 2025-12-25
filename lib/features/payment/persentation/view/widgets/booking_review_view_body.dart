import 'package:flutter/material.dart';
import 'package:travilo/core/utils/widgets/custom_button.dart';
import 'package:travilo/features/payment/persentation/view/payment_details_view.dart';
import 'package:travilo/features/payment/persentation/view/widgets/booking_summary_card.dart';
import 'package:travilo/features/payment/persentation/view/widgets/build_box_date.dart';
import 'package:travilo/features/payment/persentation/view/widgets/build_guest_selector.dart';
import 'package:travilo/features/payment/persentation/view/widgets/build_room_card.dart';
import 'package:travilo/features/payment/persentation/view/widgets/price_breakdown_widget.dart';

class BookingReviewViewBody extends StatelessWidget {
  const BookingReviewViewBody({super.key});

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
            // Hotel Info
            const BookingSummaryCard(
              hotelName: 'Oceanview Resort & Spa',
              location: 'Paris, France',
              imageUrl:
                  'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
              compact: false,
            ),
            const SizedBox(height: 24),

            // Dates & Guests
            const Text(
              'Dates & Guests',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: BuildBoxDate(date: 'Check-in', label:  'Dec 12, 2025')),
                const SizedBox(width: 16),
                Expanded(child: BuildBoxDate(date: 'Check-in', label:  'Dec 12, 2025')),
              ],
            ),
            const SizedBox(height: 16),
            BuildGuestSelector(label:'Adults',count:  '2'),
            const SizedBox(height: 8),
            BuildGuestSelector(label:'Children',count: '0'),
            const SizedBox(height: 8),
            BuildGuestSelector(label:'Rooms', count:'1'),

            const SizedBox(height: 24),
            // Select Room
            const Text(
              'Select Room',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            BuildRoomCard(isSelected: true,),
            const SizedBox(height: 12),
            BuildRoomCard(isSelected:  false),

            const SizedBox(height: 24),
            // Price Details
            const Text(
              'Price Details',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const PriceBreakdownWidget(
              items: [
                {'label': '3 Nights x \$200', 'amount': '\$600.00'},
                {'label': 'Taxes & Fees (12%)', 'amount': '\$72.00'},
                {'label': 'Service Charge', 'amount': '\$72.00'},
              ],
              totalLabel: 'Total',
              totalAmount: '\$680.00',
            ),
            const SizedBox(height: 32),

            CustomButton(
              text: 'Confirm Booking ->',
              onTap: () {
                 Navigator.of(context).pushNamed(PaymentDetailsView.routeName);
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  
}