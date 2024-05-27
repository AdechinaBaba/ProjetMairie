import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Container(
      width: double.infinity ,
      child:  Column(
        children: [
          Text("Bienvenu a Porto-Novo !", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold )),
          Image(
            image: AssetImage("assets/images/Porto.jpeg"),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Text("Porto-novo, capitale politique et administrative du Benin, est une ville riche en histoire, en culture et en diversité. Fondée au 16eme siecle, avec une superficie de 110km² elle a su preserver son heritage tout en se tournant vers l'avenir. Voici quelques faits saillants qui font de Porto-Novo une ville unique: "),
          Text("Histoire:",textAlign: TextAlign.left, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold  )),
          Text("Porto-Novo tire son nom des explorateurs portugais qui ont découvert la region au XVIe siecle. Son histoire est marquee par une riche diversité culturelle, résultat de siecle d'echanges entre les peuples Fon, Yoruba et francais."),
          Text("Culture:",textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold  )),
          Text("La ville est un melting-pot culturel, avec une varieté de festival, de ceremonies traditionnelles et d'évenements artistiques qui réfletent la richesse de sa culture.Explorez ses marchés animés, assistez à des spectacles de danse traditionnelle."),
          Text("Site Touristiques:",textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold  )),
          Text("Porto-Novo regorge de sites historiques et culturels a découvrir, tels que le palais royal de Porto-Novo,le Musée Honme, la place bayol et le Musée DaSilva "),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.all(20),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image(
                      image: AssetImage("assets/images/DA Silva.jpeg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Text("Musée Da Silva",
                      style: TextStyle( color: Colors.white,  fontSize: 20,  fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )

            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/egoun-goun.jpg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text("Egoun-Goun",
                        style: TextStyle( color: Colors.white,  fontSize: 20,  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )

            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Residence.jpeg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text("Art Residence",
                        style: TextStyle( color: Colors.white,  fontSize: 20,  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )

            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Moosquee.jpeg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text("Moosquée",
                        style: TextStyle( color: Colors.white,  fontSize: 20,  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )

            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Maison.jpg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text("Monstres",
                        style: TextStyle( color: Colors.white,  fontSize: 20,  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )

            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Cathedrale .jpeg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text("Notre-Dame",
                        style: TextStyle( color: Colors.white,  fontSize: 20,  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )

            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Gastronomie.jpeg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text("Gastro",
                        style: TextStyle( color: Colors.white,  fontSize: 20,  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )

            ),
          ),
          Text("Planifiez votre visite des aujourd'hui et laissez vous seduire par la magie de Porto-Novo notre Capitale !", style: TextStyle(fontWeight: FontWeight.bold, fontSize:15 ),)

        ]
      ),
      ),
    );
    
  }
}
