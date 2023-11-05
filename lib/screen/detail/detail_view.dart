import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({
    super.key,
    required this.place,
  });

  final Map place;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  bool _isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildBanner(context, widget.place),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  child: Text(
                    "${widget.place['name']}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _isBookmark = !_isBookmark;
                  });
                },
                icon: Icon(
                  _isBookmark ? Icons.bookmark_border : Icons.bookmark,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
                      color: Colors.blueGrey[300],
                    ),
                    const SizedBox(width: 3),
                    SizedBox(
                      child: Text(
                        "${widget.place['location']}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.blueGrey[300],
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "${widget.place['price']}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "${widget.place['details']}",
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }

  buildBanner(BuildContext context, Map place) {
    return SizedBox(
      height: MediaQuery.of(context).size.width - 120.0,
      child: ClipRRect(
        child: Image.asset(
          "${place['img']}",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width - 120.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
