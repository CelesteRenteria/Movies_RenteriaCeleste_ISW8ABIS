// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:movies/common/reusable_widgets.dart';
import 'package:movies/screens/gallery.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<String> headers = <String>['Career', 'Born', 'Nicknames','Height'];
    final List<String> info = <String>['Actor', 'December 27, 1995 in New York City, U.S', 'Lil Timmy Tim','5′ 10 (1.78m)'];
    final List<String> movies =<String>['Wonka','Bones &All','Don’t Look Up','Dune','The French Dispatch','The King','Little Women','A Rainy Day in New York','Beautiful Boy','Lady Bird','Hot Summer Nights','Call Me by Your Name','One & Two','Interstellar'];
    final List<String> movie_year = <String>['2023','2022','2021','2021','2021','2019','2019','2019','2018','2017','2017','2017','2015','2014'];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 234, 234),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
                height: size.height * 0.75,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.75 - 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(offset: Offset(0, 5), blurRadius: 50)
                        ],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/44/05/61/44056100d37d58a181ef0519258ba72f.png")),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: const Text("Timothée Chalamet",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("26 years old",
                        style:
                            TextStyle(color: Color(0xFF9A9BB2), fontSize: 20)),
                  ),
                  const SizedBox(height: 25),
                  Row(children: <Widget>[
                    Text("Bio", style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(154, 155, 178, 1),
                            textStyle: const TextStyle(fontSize: 12)),
                        onPressed: null,
                        child: const Text('Full Bio')),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFF9A9BB2),
                      size: 15.0,
                    )
                  ]),
                  const SizedBox(
                      width: 500,
                      child: Text(
                        'Timothée Hal Chalamet born December 27, 1995) is an American actor. He has received several accolades, including nominations for an Academy Award, two Golden Globe Awards, and three BAFTA Film Awards.Born and raised in New York City, Chalamet began his career on the stage and in television productions, appearing in the drama series Homeland in 2012. Two years later, he made his feature film debut in the comedy-drama Men, Women & Children and appeared in Christopher Nolan’s science-fiction film Interstellar ... ',
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.justify,
                      )),
                  const SizedBox(height: 25),
                  const LeftAlingTitle(title: 'Information'),
                  Card(
                      elevation: 0,
                      color: Colors.white,
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                width: 400,
                                height: 250,
                                child: ListView.separated(
                                  itemCount: headers.length,
                                  itemBuilder:
                                      (BuildContext  context, int index) {
                                    return Container(
                                        height: 40,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text( '${headers[index]}',style: TextStyle(color:Color(0xFF9A9BB2), fontSize: 13, fontWeight: FontWeight.w500))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text( '${info[index]}',style: TextStyle(color:Colors.black, fontSize: 13, fontWeight: FontWeight.w700)))
                                          ],
                                        ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                          ],
                        ),
                      ))),
                      const SizedBox(height: 25),
                      Row(children: <Widget>[
                    Text("Photos", style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(154, 155, 178, 1),
                            textStyle: const TextStyle(fontSize: 12)),
                        onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>  GalleryScreen()));},
                        child: const Text('More Photos')),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFF9A9BB2),
                      size: 15.0,
                    )
                  ]),
                  Column(
                            children: <Widget>[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children:  const <Widget>[
                                    ImageCast(Image_URL: "https://es.web.img2.acsta.net/pictures/18/02/28/11/16/3611785.jpg", widthImage: 150),
                                    SizedBox(width: 10),
                                    ImageCast(Image_URL: "https://i.pinimg.com/736x/4a/ca/e8/4acae887829946df27954e0f9b335575.jpg", widthImage: 150),
                                   SizedBox(width: 10),
                                   ImageCast(Image_URL: "https://pbs.twimg.com/media/FAe9yQ_XEAQygjs.jpg", widthImage: 150),
                                   SizedBox(width: 10),
                                   ImageCast(Image_URL: "https://i.tmgrup.com.tr/vogue/img/sq/20-04/07/call_me_by_your_name__-1586256052.jpg?0.4320951738110077", widthImage: 150),
                                  ],
                                ),
                              )
                            ]
                          ),
                         const SizedBox(height: 25),
                  const LeftAlingTitle(title: 'Filmography') ,
                  Card(
                      elevation: 0,
                      color: Colors.white,
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                width: 400,
                                height: 250,
                                child: ListView.separated(
                                  itemCount: movies.length,
                                  itemBuilder:
                                      (BuildContext  context, int index) {
                                    return Container(
                                        height: 30,
                                        child: Row(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text( '${movies[index]}',style: TextStyle(color:Colors.grey[850], fontSize: 13, fontWeight: FontWeight.w500))),
                                            Spacer(),
                                            Text( '${movie_year[index]}',style: TextStyle(color:Colors.black, fontSize: 13, fontWeight: FontWeight.w700),textAlign: TextAlign.end) 
                                            
                                          ],
                                        ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                          ],
                        ),
                      ))),
                ],
              ),
            ),
          ],
        )));
  }
}
