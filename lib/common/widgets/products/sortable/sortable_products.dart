import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TsortableProducts extends StatelessWidget {
  const TsortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher price',
              'Lower price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((options) => DropdownMenuItem(
                    value: options, child: Text(options)))
                .toList(),
            onChanged: (value) {}),
        const SizedBox(height: TSizes.spaceBtwSections),
        TGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const TProductCardVertical())
      ],
    );
  }
}
