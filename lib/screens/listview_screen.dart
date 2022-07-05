import 'package:flutter/material.dart';
import 'package:movies/common/reusable_widgets.dart';
import 'package:movies/screens/home_screen.dart';
import 'package:movies/screens/information_screen.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 234, 234),
        appBar: AppBar(
          backgroundColor: Colors.white60,
          elevation: 0,
          toolbarHeight: 75,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            icon: const Icon(Icons.arrow_back_rounded),
            color: Colors.grey[850],
          ),
          title: Text("Cast", style: TextStyle(color: Colors.grey.shade900)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Align(alignment: Alignment.centerLeft,
                child: Text("Cast",
                    style: Theme.of(context).textTheme.headline6)),
                const SizedBox(
                  height: 15,
                ),
                
                Row(children: const <Widget>[
                  
                  ImageCast(Image_URL: "https://www.hola.com/fashion/imagenes/lifestyle/2020022069037/timothee-chalamet-actor-quien-es-estilo/0-297-510/timotheechalamet-portada-e.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Timothée Chalamet", character: "Paul Atreides")
                ]),
                
                const SizedBox( height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://www.show.news/__export/1594342243255/sites/debate/img/2020/07/09/zendaya-filma-pelicula-en-secreto_crop1594342143422.jpg_423682103.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Zendaya", character: "Chani")
                ]),
                
                const SizedBox( height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://img.bekiabelleza.com/looks_belleza/2000/2102-p.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Rebecca Ferguson", character: "Lady Jessica")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://hips.hearstapps.com/esquireuk.cdnds.net/15/37/original/original-oscar-isaac-ex-machina-2-11-jpg-b6cf2f6e.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Oscar Isaac", character: "Leto Atreides")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://media.admagazine.com/photos/61e0a5ca06c10ae95c71b8b0/1:1/w_2000,h_2000,c_limit/Jason-Momoa.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Jason Momoa", character: "Duncan Idaho")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://i.guim.co.uk/img/media/6a2bd4fd0b80e6c686a0b671a8cce86dc2e928f1/0_71_5551_3330/master/5551.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=05762c05e18454b4967441dc7e4e8d80", widthImage: 80),

                  CastCard_ArrowIcon(name: "Stellan Skarsgård", character: "Vladimir Harkonnen")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://www.famousbirthdays.com/faces/batista-dave-image.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Dave Bautista", character: "Glossu Rabban")
                ]),
                
                const SizedBox( height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1K3o2ti1eAeZeUejNwCA5DXWW79ixwZHLawSzheeg74zYgWuHeEIzHQYFaCePmy-0C1U&usqp=CAU", widthImage: 80),

                  CastCard_ArrowIcon(name: "Javier Bardem", character: "Stilgar")
                ]),
                
                const SizedBox( height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://cdn.allfamous.org/people/avatars/josh-brolin-jjya-allfamous.org.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Josh Brolion", character: "Gurney Halleck")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://www.cromosomax.com/pics/2022/03/la-reina-de-bridgerton-golda-rosheuvel-adora-su-alegre-vida-gay-0.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Golda Rosheuvel", character: "Shadout Mapes")
                ]),
                
                const SizedBox(height: 10 ),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://cineuropa.org/Files/2015/12/16/1450264485890.jpg?1573360880700", widthImage: 80),

                  CastCard_ArrowIcon(name: "Charlotte Rampling", character: "Gaius Helen")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://www.cine.com/media/actores/3/32665/32665_500.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "David Dastmalchian", character: "Piter De Vries")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://cdn.allfamous.org/people/avatars/stephen-mckinley-henderson-jfnc-allfamous.org.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Stephen McKinley H.", character: "Thufir Hawat")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://peliculas.fra1.digitaloceanspaces.com/actores/775/actor-sharon-duncan-brewster-0.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Sharon Duncan", character: "Liet-Kynes")
                ]),
                
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://www.themoviedb.org/t/p/w235_and_h235_face/4BOQ5pJXdsArkMHvyVhrV8Ditnr.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Chang Chen", character: "Wellington Yueh")
                ]),
                
                const SizedBox( height: 10),
                Row(children: const <Widget>[
                  ImageCast(Image_URL: "https://resizing.flixster.com/NGKAuElV6WwfSD_gsaZUkfa8upM=/300x300/v2/https://flxt.tmsimg.com/v9/AllPhotos/503647/503647_v9_ba.jpg", widthImage: 80),

                  CastCard_ArrowIcon(name: "Babs Olusanmokun", character: "Jamis")
                ]),
              ],
            ),
          ),
        ));
  }
}
