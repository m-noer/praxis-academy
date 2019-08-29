import 'package:flutter/material.dart';
import 'package:travel_app/app_localizations.dart';
import 'detailPage.dart';

class ListHotel extends StatelessWidget {
  ListHotel({Key key, this.title, this.image}) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    title: title,
                    image: image,
                  )),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Hero(
            tag: title,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                AppLocalizations.of(context).translate("comments"),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "\$ 500",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
