import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRationProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              TRationProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              TRationProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              TRationProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              TRationProgressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
