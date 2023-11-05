import 'package:flutter/material.dart';
import 'package:flutter_submission_dicoding/screen/detail/detail_view.dart';
import 'package:flutter_submission_dicoding/utils/constants.dart';
import 'package:flutter_submission_dicoding/widget/icon_badge.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.place,
  });

  final Map place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tourist Details',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
            color: Constants.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const IconBadge(
              icon: Icons.notifications_none,
            ),
          ),
        ],
      ),
      body: DetailView(
        place: place,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.airplanemode_active,
        ),
      ),
    );
  }
}
