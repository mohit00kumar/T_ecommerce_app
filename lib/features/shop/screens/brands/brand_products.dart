import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBrandProducts extends StatelessWidget {
  const TBrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppbar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(
                showBorder: true,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TsortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
