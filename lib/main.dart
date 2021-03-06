import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:blobs/blobs.dart';
import 'package:new_app/widgets/customCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff353569), Color(0xff272942)])),
          child: Stack(
            children: [
              Positioned(
                top: -100,
                left: -110,
                child: Blob.fromID(
                    id: ['11-6-649'],
                    size: 450,
                    styles: BlobStyles(
                        gradient: LinearGradient(
                                colors: [Color(0xffEE86AB), Color(0xffEA44C4)])
                            .createShader(Rect.fromLTRB(0, 0, 400, 400)))),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
                      child: Text(
                        'Classify transaction',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 28.0,
                            letterSpacing: .7,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 15.0, 0, 20.0),
                      child: Text(
                        'Classify this transaction into a\nparticular category',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: CustomCardContainer(
                                  icon: FontAwesomeIcons.thLarge,
                                  size: 25.0,
                                  name: 'General',
                                  colors: [
                                Color(0xff5BBEFA),
                                Color(0xff499FF5)
                              ])),
                          Expanded(
                              child: CustomCardContainer(
                                  icon: FontAwesomeIcons.bus,
                                  size: 25.0,
                                  name: 'Transport',
                                  colors: [
                                Color(0xffB290FC),
                                Color(0xff7054E0)
                              ])),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: CustomCardContainer(
                                  icon: FontAwesomeIcons.shoppingBag,
                                  size: 25.0,
                                  name: 'Shopping',
                                  colors: [
                                Color(0xffF1A1F2),
                                Color(0xffea3cde)
                              ])),
                          Expanded(
                              child: CustomCardContainer(
                                  icon: FontAwesomeIcons.fileInvoice,
                                  size: 25.0,
                                  name: 'Bills',
                                  colors: [
                                Color(0xffF5C098),
                                Color(0xffef8a4c)
                              ])),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: CustomCardContainer(
                                  icon: FontAwesomeIcons.video,
                                  size: 25.0,
                                  name: 'Entertainment',
                                  colors: [
                                Color(0xff86ABFA),
                                Color(0xff4C77FE)
                              ])),
                          Expanded(
                              child: CustomCardContainer(
                                  icon: FontAwesomeIcons.appleAlt,
                                  size: 25.0,
                                  name: 'Shopping',
                                  colors: [
                                Color(0xff90EC9D),
                                Color(0xff5dcb4c)
                              ])),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      color: Color(0xff373856),
                      padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 10.0),
                      height: 60.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.3, 1],
                              colors: [Color(0xffF3B4A9), Color(0xffEA46B9)],
                            ).createShader(bounds),
                            child: Icon(
                              Icons.wallet_giftcard,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.chartLine,
                            size: 22.0,
                            color: Color(0xff70739B),
                          ),
                          Icon(
                            FontAwesomeIcons.user,
                            size: 20.0,
                            color: Color(0xff70739B),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
