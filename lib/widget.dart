import 'package:flutter/material.dart';
import 'package:flutter_app/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Booton extends StatelessWidget {
  const Booton({
    Key? key,
    required this.text,
    required this.color,
    required this.link,
  }) : super(key: key);

  final String text;
  final Color color;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        width:  MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.07,
        child: TextButton(
          onPressed: () async {
            try {
              await canLaunch(link)
                  ? await launch(
                link,
                enableJavaScript: true,
                forceWebView: true,
              )
                  : throw 'could not lunch url';
            } catch (e) {
              e.toString();
            }
          },
          child: Text(
            text,
            style: TextStyle(
                color: WhiteColor,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.02),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class iconButton extends StatelessWidget {
  const iconButton({
    Key? key,
    required this.link,
    required this.image,
  }) : super(key: key);

  final String image;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: IconButton(
        icon: Image.asset(image),
        iconSize: MediaQuery.of(context).size.width * 0.03,
        onPressed: () async {
          try {
            await canLaunch(link)
                ? await launch(
                    link,
                    enableJavaScript: true,
                    forceWebView: true,
                  )
                : throw 'could not lunch url';
          } catch (e) {
            e.toString();
          }
        },
      ),
    );
  }
}
