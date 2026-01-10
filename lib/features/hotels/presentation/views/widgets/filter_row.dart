import 'package:flutter/material.dart';
import 'package:travilo/core/widgets/custom_dropdown_filter.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CustomDropdownFilter(
            hint: "Category",
            prefixIcon: Icons.grid_view,
            items: const [
              "Luxury Hotel",
              "Airport Hotel",
              "Beach Hotel",
              "Mountain Hotel",
              "Youth Hotel",
              "Popular",
              "Homestay",
            ],
            onChanged: (value) {},
          ),
          const SizedBox(width: 10),
          CustomDropdownFilter(
            hint: "Price",
            prefixIcon: Icons.monetization_on_outlined,
            items: const [
              "Low to High",
              "High to Low",
              "Below \$100",
              "\$100 - \$300",
            ],
            onChanged: (value) {},
          ),
          const SizedBox(width: 10),
          CustomDropdownFilter(
            hint: "Rating",
            prefixIcon: Icons.star_border,
            items: const ["4.5+", "4.0+", "3.0+"],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
