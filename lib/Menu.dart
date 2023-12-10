import 'package:flutter/material.dart';

class Book {
  final String title;
  final String author;
  final String description;
  final String coverImageUrl;

  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.coverImageUrl,
  });
}

class HomePage extends StatelessWidget {
  final List<Book> featuredBooks = [
    Book(
      title: 'Cien años de soledad',
      author: 'Gabriel García Márquez',
      description:
          'La obra maestra de Gabriel García Márquez, una novela que define un siglo.',
      coverImageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51g5IxVwJ-L._SX322_BO1,204,203,200_.jpg',
    ),
    Book(
      title: 'El Quijote',
      author: 'Miguel de Cervantes',
      description:
          'La obra cumbre de la literatura española, una novela que ha resistido el paso del tiempo.',
      coverImageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51JjJ8jvLzL._SX331_BO1,204,203,200_.jpg',
    ),
    Book(
      title: 'La Odisea',
      author: 'Homero',
      description:
          'La epopeya griega por excelencia, una obra que ha inspirado a generaciones de escritores.',
      coverImageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51JjJ8jvLzL._SX331_BO1,204,203,200_.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libros destacados'),
      ),
      body: ListView.builder(
        itemCount: featuredBooks.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // TODO: Abrir pantalla de detalles del libro
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(featuredBooks[index].coverImageUrl),
                  ListTile(
                    title: Text(featuredBooks[index].title),
                    subtitle: Text(featuredBooks[index].author),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
