import 'package:amazon_clone/features/accounts/presentation/widgets/account_button.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AccountButton(
              text: 'Your Orders',
              onTap: () {},
            ),
            SizedBox(
              width: 8,
            ),
            AccountButton(
              text: 'Turn Seller',
              onTap: () {},
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              text: 'Log Out',
              onTap: () {},
            ),
            SizedBox(
              width: 8,
            ),
            AccountButton(
              text: 'Your Wish list',
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}
