import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
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
                        padding: EdgeInsets.all(13.0),
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
                              colors: [Color(0xff5BBEFA), Color(0xff499FF5)]),
                        ),
                        child: Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        'General',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff5BBEFA),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: CustomCard(),
    );
  }
}
