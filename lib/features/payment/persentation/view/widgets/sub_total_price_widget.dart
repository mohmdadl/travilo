import 'package:flutter/material.dart';

class SubTotalPriceWidget extends StatelessWidget {
  const SubTotalPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1C222B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal(3Nights)',
                style: TextStyle(color: Colors.grey),
              ),
              Text('\$600.00', style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Taxes & Fees',
                style: TextStyle(color: Colors.grey),
              ),
              Text('\$72.00', style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(height: 12),
          Divider(color: Colors.white10),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Due',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$680.00',
                style: TextStyle(
                  color: Color(0xFF007BFF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}