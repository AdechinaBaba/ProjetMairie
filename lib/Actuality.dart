import 'package:flutter/material.dart';
import 'ArticlePage.dart';

class Article {
  final String title;
  final String description;
  final String imagePath;
  final String author;
  final DateTime date;

  Article({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.author,
    required this.date,
  });
}

class ActuPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'La cathédrale de Porto-Novo',
      description: 'Heritage du Colonisateur.',
      imagePath: 'assets/images/Cathedrale .jpeg',
      author: 'Auteur 1',
      date: DateTime.now(),
    ),
    Article(
      title: 'Instensification du tourisme',
      description: 'Un projet touristique initié par l´association OUADADA Bénin.',
      imagePath: 'assets/images/Loko.jpeg',
      author: 'Ouadada',
      date: DateTime.now(),
    ),
    Article(
      title: 'Porto-Novo, Guide Bénin',
      description: 'La ville de Porto Novo, surnommée la "cité rouge", peut offrir aux touristes une belle diversité d´activités lors de leur voyage au Bénin.',
      imagePath: 'assets/images/DA Silva.jpeg',
      author: 'Evaneos',
      date: DateTime.now(),
    ),
    Article(
      title: 'Programme 20000 logement',
      description: 'Le projet 20 000 logements ambitionne de construire des logements économiques et sociaux dans 14 villes du Bénin.',
      imagePath: 'assets/images/Logement.jpeg',
      author: 'SimauBenin',
      date: DateTime.now(),
    ),
    Article(
      title: 'Assemblée National',
      description: 'Parlement et palais des gourverneurs, elle est l´organe législatif unicameral du pays.',
      imagePath: 'assets/images/National.jpeg',
      author: 'Benin',
      date: DateTime.now(),
    ),
    Article(
      title: 'Patrouille de la police',
      description: ' La police de porto novo mene une lutte farouche pour le respect du code de la route.',
      imagePath: 'assets/images/Police.jpeg',
      author: 'Info-Bénin',
      date: DateTime.now(),
    ),
    Article(
      title: 'Eclosions Urbaines ',
      description: 'Porto-Novo se transforme! Inauguration des places traditionnelles vodoun dans le cadre du projet Porto-Novo verte.',
      imagePath: 'assets/images/Musée.png',
      author: 'Eclosion',
      date: DateTime.now(),
    ),
    Article(
      title: 'Porto Novo, Ville verte',
      description: 'Porto-Novo, capitale du Bénin fait face à des défis climatiques importants. La ville repose sur 15% de terres inondables et ne compte qu´un espace vert pour près de 400.000 habitants..',
      imagePath: 'assets/images/Vert.png',
      author: 'BeninT-Tourisme',
      date: DateTime.now(),
    ),
    Article(
      title: 'Nouvelle Route',
      description: 'Dédoublement de la route Seme-Porto-Novo(10km) et construction dun nouveau pont en 2*2 voies.',
      imagePath: 'assets/images/Pont.png',
      author: 'Programme d´action du gouvernement',
      date: DateTime.now(),
    ),
    // Ajoutez d'autres articles ici
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: SizedBox(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  articles[index].imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(articles[index].title),
            subtitle: Text(articles[index].description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticleDetailScreen(article: articles[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}