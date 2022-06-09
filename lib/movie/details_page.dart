import 'package:flutter/material.dart';
import 'package:sneakers/movie/custom_text.dart';
import 'package:sneakers/movie/style.dart';

import '../movies/widgets/movie_card.dart';
import '../src/core/constants/app_text_styles.dart';
import '../src/core/data/models/movies.dart';

class MoviePage extends StatefulWidget {
  final Movie movie;
  const MoviePage({Key? key, required this.movie}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  List<String> sizes = ['39', '40', '41', '42', '43'];
  List<Color> colorsOf = [
    Colors.grey.shade300,
    Colors.deepPurple.shade300,
    Colors.blue.shade300,
    Colors.amber.shade300,
    Colors.black,
  ];
  int quantity = 1;
  int cost = 50;
  int selectedColor = 0;
  void colorIndex(int index) {
    selectedColor = index;
  }

  int selectedService = -1;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;

        return Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: h * -.1,
                width: w,
                height: h * .6,
                child: Hero(
                    tag: widget.movie.image,
                    child: MovieCard(image: widget.movie.image)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 100,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                  ),
                ),
              ),
              Positioned(
                height: h * .46,
                width: w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Hero(
                          tag: widget.movie.name,
                          child: Material(
                            type: MaterialType.transparency,
                            child: Text(
                              widget.movie.name.toUpperCase(),
                              style: AppTextStyles.movieNameTextStyle,
                            ),
                          ),
                        ),
                        Text('${cost * quantity}\$',
                            style: const TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      width: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colorsOf.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                colorIndex(index = index);
                              });
                            },
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: colorsOf[index],
                                child: selectedColor == index
                                    ? const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      )
                                    : Container(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < 4; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        const Icon(Icons.star)
                      ],
                    ),*/
                    const SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              icon: const Icon(
                                Icons.remove,
                                size: 36,
                              ),
                              onPressed: () {
                                if (quantity != 1) {
                                  setState(() {
                                    quantity -= 1;
                                  });
                                }
                              }),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(28, 12, 28, 12),
                              child: CustomText(
                                text: "Add $quantity To Cart",
                                color: white,
                                size: 22,
                                weight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                size: 36,
                                color: red,
                              ),
                              onPressed: () {
                                setState(() {
                                  quantity += 1;
                                });
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: sizes.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (selectedService == index) {
                                    selectedService = -1;
                                  } else {
                                    selectedService = index;
                                  }
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: selectedService == index
                                      ? Colors.blue.withOpacity(.2)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: selectedService == index
                                        ? Colors.blue
                                        : Colors.blue.withOpacity(.3),
                                    width: 2.0,
                                  ),
                                ),
                                child: Center(
                                    child: Text(sizes[index],
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 18))),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Material(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'Order',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
