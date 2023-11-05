import 'package:flutter/material.dart';
import 'package:flutter_submission_dicoding/screen/detail/detail_screen.dart';

class HomeDestinationPlaceItem extends StatelessWidget {
  const HomeDestinationPlaceItem({
    super.key,
    required this.place,
    required this.potretScreen,
  });

  final Map place;
  final String potretScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: (potretScreen == "horizontal") ? 0 : 15.0,
        right: (potretScreen == "horizontal") ? 20.0 : 0,
      ),
      child: InkWell(
        child: SizedBox(
          height: (potretScreen == "horizontal") ? 250.0 : 70.0,
          width: (potretScreen == "horizontal") ? 140.0 : 0,
          child: (potretScreen == "horizontal")
              ? Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "${place['img']}",
                        height: 178.0,
                        width: 140.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 7.0),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${place['name']}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${place['location']}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                          color: Colors.blueGrey[300],
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "${place['img']}",
                        width: 70.0,
                        height: 70.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    SizedBox(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width - 130.0,
                      child: ListView(
                        primary: false,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${place['name']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14.0),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(height: 3.0),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 13.0,
                                color: Colors.blueGrey[300],
                              ),
                              const SizedBox(width: 3.0),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${place['location']}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.blueGrey[300],
                                  ),
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${place['price']}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
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
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(
                  place: place,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
