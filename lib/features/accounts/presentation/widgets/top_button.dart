import 'package:amazon_clone/features/accounts/presentation/widgets/account_button.dart';
import 'package:amazon_clone/features/accounts/services/account_services.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

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
              onTap: () => AccountServices().logOut(context),
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
