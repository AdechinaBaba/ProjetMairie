import 'package:flutter/material.dart';

class DecouvPage extends StatelessWidget {
  const DecouvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            "Sites touristiques",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/egoun-goun.jpg", "Egoun-Goun"),
                buildContainer("assets/images/DA Silva.jpeg", "Musée DA Silva"),
                buildContainer("assets/images/Alexandre.jpeg", "Alexandre Adandé"),
                buildContainer("assets/images/Cultureporto.jpeg", "Vodoun-honto"),
                buildContainer("assets/images/Palais.jpeg", "Palais"),
                buildContainer("assets/images/JPN.jpeg", "Jardin"),
              ],
            ),
          ),

          SizedBox(height: 10),
          Text(
            "Pharmacie",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/PHAgata.jpeg", "Agata"),
                buildContainer("assets/images/PHAdjibadé.jpeg", "Adjibadé"),
                buildContainer("assets/images/PHAAttake.jpeg", "Attake"),
                buildContainer("assets/images/PHCatchi.jpeg", "Catchi"),
                buildContainer("assets/images/Pharmacie_Bayol.jpeg", "Bayol"),
                buildContainer("assets/images/Pharmacie_Cristali.jpg", "Cristali"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Hôpital/Clinique",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/Bourlevard.jpeg", "Bourlevard"),
                buildContainer("assets/images/Pasteur.jpeg", "Louis_Pasteur"),
                buildContainer("assets/images/Rapha.jpeg", "Rapha"),
                buildContainer("assets/images/Fenou.jpeg", "Fenou"),
                buildContainer("assets/images/Faateh.jpeg", "El-Faateh"),
                buildContainer("assets/images/Gbin.jpeg", "Clinique"),
              ],
            ),
          ),

          SizedBox(height: 10),
          Text(
            "Etablissement Scolaire",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/Cathedrale .jpeg", "Notre-Dame"),
                buildContainer("assets/images/CO Merveilleuse.jpeg", "Merveilleuse"),
                buildContainer("assets/images/CO DJidonou.jpeg", "Robert Djidonou"),
                buildContainer("assets/images/CO Davié.jpeg", "Ceg Davié"),
                buildContainer("assets/images/Lycée_Toffa_1er.jpeg", "Lycée Toffa"),
                buildContainer("assets/images/CO Djegan.jpeg", "Ceg Djean_kpevi"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            " Universié",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/Hecm1.jpeg", "Hecm"),
                buildContainer("assets/images/Adonai.jpeg", "Adonai"),
                buildContainer("assets/images/Sonou.jpeg", "Cour_Sonou"),
                buildContainer("assets/images/Gasa.jpeg", "UATM-Gasa"),
                buildContainer("assets/images/ENS.jpeg", "ENS"),
                buildContainer("assets/images/UPAO.jpeg", "UPAO"),

              ],
            ),
          ),

          SizedBox(height: 10),
          Text(
            " Restaurant",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/Residence.jpeg", "Art_Résidence"),
                buildContainer("assets/images/Festival des graces.jpeg", "Festival"),
                buildContainer("assets/images/L'endroit.jpeg", "L'endroit"),
                buildContainer("assets/images/L´égendaire.jpeg", "Légendaire"),
                buildContainer("assets/images/Palace.jpeg", "Freedom"),
                buildContainer("assets/images/Porto-Grill.jpeg", "Porto_Grill"),
              ],
            ),
          ),

          SizedBox(height: 10),
          Text(
            " Hotel",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/Residence.jpeg", "Art_Résidence"),
                buildContainer("assets/images/Toureiffel.jpg", "Tour_eiffel"),
                buildContainer("assets/images/Palace.jpeg", "Freedom"),
                buildContainer("assets/images/Ayelawadge.jpeg", "MB Hotel"),
                buildContainer("assets/images/ambassadeur.jpeg", "Ambassadeur"),
                buildContainer("assets/images/hotel1.jpeg", "Porto"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            " Marchée",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer("assets/images/M1.jpeg", "Marchée"),
                buildContainer("assets/images/M6.jpeg", "Marchée"),
                buildContainer("assets/images/M7.jpeg", "Marchée"),
                buildContainer("assets/images/M4.jpeg", "Marchée"),
                buildContainer("assets/images/M5.jpeg", "Marchée"),
                buildContainer("assets/images/M3.jpeg", "Marchée"),
              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget buildContainer(String imagePath, String label) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 140,
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
              height: 140,
              width: 250,
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}