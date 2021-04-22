import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final icon;
  final name;
  final colors;
  final size;

  CustomCard({this.icon, this.size, this.name, this.colors});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0x88484783),
              borderRadius: BorderRadius.circular(25.0)),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black12.withOpacity(.2))
                            ],
                            borderRadius: BorderRadius.circular(35.0),
                            gradient: LinearGradient(
                                stops: [0.3, 1],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: this.colors)),
                        child: Icon(
                          this.icon,
                          color: Colors.white,
                          size: this.size,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        this.name,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: this.colors[1],
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardContainer extends StatelessWidget {
  final icon;
  final name;
  final colors;
  final size;

  CustomCardContainer({this.icon, this.size, this.name, this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: CustomCard(
          icon: this.icon,
          size: this.size,
          name: this.name,
          colors: this.colors),
    );
  }
}
