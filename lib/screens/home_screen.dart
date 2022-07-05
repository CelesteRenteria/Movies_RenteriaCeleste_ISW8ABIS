
import 'package:flutter/material.dart';
import 'package:movies/common/reusable_widgets.dart';
import 'listview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
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
                              "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2021/08/dune-2433609.jpg?itok=cCnYTrFm")),
                    ),
                  )
                ],
              )),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Image(
                                  image: NetworkImage(
                                      "https://img.icons8.com/ios/500/imdb.png"),
                                  height: 50.0),
                              SizedBox(width: 5),
                              Text(
                                "8.0",
                                style: TextStyle(color: Color(0xFF9A9BB2)),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Dune",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              //Checar esto
                              Spacer(),
                              Icon(
                                Icons.bookmark_outline_sharp,
                                size: 30.0,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Science Fiction,",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Adventure",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text("USA 2021/",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("2h 35min/",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("PG - 13",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12))
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                SizedBox(
                                  width: 150,
                                  height: 60,
                                  child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)))),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                                  onPressed: null, child: Text('Showtimes',style: TextStyle(color: Color(0xFF9A9BB2)))),
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 60,
                                  child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)))),
                                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 43, 25, 238)
                                    )
                                  ),
                                  onPressed: null, child: Text('Details', style: TextStyle(color: Colors.white),)),
                                )
                              
                            
                          ]),
                          SizedBox(height: 60),
                          Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                Text("Story",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.right)
                              ]),
                              SizedBox(height: 10),
                              SizedBox(
                                  width: 500,
                                  child: Padding(padding: EdgeInsets.all(10),
                                  child: Text(
                                    'A mythic and emotionally charged hero’s journey, "Dune" tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, who must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet’s exclusive supply of the most precious resource in existence—a commodity capable of unlocking humanity’s greatest potential—only those who can conquer their fear will survive.',
                                    style: TextStyle(fontSize: 13),
                                    textAlign: TextAlign.justify,
                                  ))
                                  ),
                              SizedBox(height: 30),
                              Row(children: <Widget>[
                                Text("Cast",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.right),
                                SizedBox(width: 250),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        primary: Color.fromRGBO(154, 155, 178, 1),
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            )),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>  ListViewScreen()));},
                                    child: const Text('Full Cast')),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: Color(0xFF9A9BB2),
                                  size: 15.0,
                                )
                              ]),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const <Widget>[
                                    ImageCast(Image_URL: "https://www.hola.com/fashion/imagenes/lifestyle/2020022069037/timothee-chalamet-actor-quien-es-estilo/0-297-510/timotheechalamet-portada-e.jpg", widthImage:90),
                                    CastCard(character: "Paul Atreides", name: "Timothée Chalamet"),
                                    
                                    ImageCast(Image_URL: "https://www.show.news/__export/1594342243255/sites/debate/img/2020/07/09/zendaya-filma-pelicula-en-secreto_crop1594342143422.jpg_423682103.jpg", widthImage: 90),
                                    CastCard(character: "Chani", name: "Zendaya"),

                                    ImageCast(Image_URL:"https://img.bekiabelleza.com/looks_belleza/2000/2102-p.jpg" , widthImage: 90),
                                    CastCard(character: "Lady Jessica", name: "Rebecca Ferguson")

                                  ],
                                ),
                              )
                            ]
                          ),
                          const SizedBox(height: 30),
                          Row(children: <Widget>[
                            Text("Trailers",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.right),
                                const SizedBox(width: 190),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF9A9BB2))),
                                    onPressed: null,
                                    child: const Text('More Videos')),
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
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: const Image(image: NetworkImage("https://i.ytimg.com/vi/kPjOcWHVNGo/maxresdefault.jpg"), width: 300
                                      ),
                                      ),
                                      const SizedBox(width: 10),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: const Image(image: NetworkImage("https://www.cinepremiere.com.mx/wp-content/uploads/2021/06/dune-venecia-900x491.jpg"), width: 300
                                      ),
                                      ),
                                   const SizedBox(width: 10),
                                   ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: const Image(image: NetworkImage("https://sm.ign.com/t/ign_latam/video/d/dune-offic/dune-official-final-trailer_88bq.1280.jpg"), width: 300
                                      ),
                                      ),
                                  ],
                                ),
                              )
                            ]
                          )
                        ],
                        
                      )
                      )
                      ),
            ],
          ),
        ],
      )),
      
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
       BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: 'Trending',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.tab_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.turned_in), label: '')
      ]),
    );
  }
}

