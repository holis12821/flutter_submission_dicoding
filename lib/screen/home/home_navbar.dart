import 'package:flutter/material.dart';
import 'package:flutter_submission_dicoding/utils/constants.dart';
import 'package:flutter_submission_dicoding/widget/icon_badge.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: Colors.blue,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 16,
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Constants.white,
                shape: BoxShape.circle,
              ),
              width: 30,
              height: 30,
              margin: const EdgeInsets.only(right: 12),
              child: Center(
                child: Image.asset(
                  'assets/profile_placeholder.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning Sonya,',
                  style: theme.textTheme.labelMedium?.merge(
                    TextStyle(
                      color: Constants.white,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Do you remember's Today?",
                  style: theme.textTheme.labelMedium?.merge(
                    TextStyle(
                      color: Constants.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
           IconButton(
            onPressed: () {},
            icon: IconBadge(
              icon: Icons.notifications_none,
              color: Constants.white,
            ),
          )
        ],
      ),
    );
  }
}
