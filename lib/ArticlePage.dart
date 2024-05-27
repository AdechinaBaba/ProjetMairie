import 'package:flutter/material.dart';
import 'Actuality.dart';

class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  ArticleDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(article.imagePath),
              SizedBox(height: 16.0),
              Text(
                article.title,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Par ${article.author} | ${article.date.toLocal().toString().split(' ')[0]}',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16.0),
              Text(
                article.description,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      )
    );
  }
}

