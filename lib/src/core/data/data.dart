import 'package:flutter/material.dart';

import '../constants/constants.dart';

import 'models/movies.dart';

final section1 = List.generate(
  16,
  (index) => Seat(
    isHidden: [0, 1, 4].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section2 = List.generate(
  16,
  (index) => Seat(
    isHidden: [4, 5, 6, 7].contains(index),
    isOcuppied: [12, 13].contains(index),
  ),
);

final section3 = List.generate(
  16,
  (index) => Seat(
    isHidden: [2, 3, 7].contains(index),
    isOcuppied: [13, 14, 15].contains(index),
  ),
);

final section4 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [1, 2, 3].contains(index),
  ),
);

final section5 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section6 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [14].contains(index),
  ),
);

final seats = [
  section1,
  section2,
  section3,
  section4,
  section5,
  section6,
];

const seatTypes = [
  SeatType(name: 'Available', color: Colors.grey),
  SeatType(name: 'Booked', color: Colors.black),
  SeatType(name: 'Selection', color: AppColors.primaryColor),
];

const dates = [
  MovieDate(day: 11, month: 'OCT', hour: '6:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '8:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '9:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '10:00PM'),
];

final movies = [
  Movie(
    name: 'Greta ',
    image: 'assets/images/adidas1.jpg',
    screenPreview: 'assets/images/adidas1.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Jeff Hille',
      'Jane Perry',
      'Colm Feore',
      'Isabella Hupper',
      'Stephen Rea',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Aladdin ',
    image: 'assets/images/aladdin.jpg',
    screenPreview: 'assets/images/aladdin.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Aladdin 2 ',
    image: 'assets/images/aladdin_2.jpg',
    screenPreview: 'assets/images/aladdin_2.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
];

final adidas = [
  Movie(
    name: 'NMD R1 V2 ',
    image: 'assets/images/adidas4.jpg',
    screenPreview: 'assets/images/adidas4.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'ZX 500 RM ',
    image: 'assets/images/adidas1.jpg',
    screenPreview: 'assets/images/adidas1.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Jeff Hille',
      'Jane Perry',
      'Colm Feore',
      'Isabella Hupper',
      'Stephen Rea',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'NMD R1 V2 ',
    image: 'assets/images/adidas2.jpg',
    screenPreview: 'assets/images/adidas2.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Niteball ',
    image: 'assets/images/adidas3.jpg',
    screenPreview: 'assets/images/adidas3.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
];

final nike = [
  Movie(
    name: 'Air Max 270',
    image: 'assets/images/nike1.jpg',
    screenPreview: 'assets/images/nike1.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Jeff Hille',
      'Jane Perry',
      'Colm Feore',
      'Isabella Hupper',
      'Stephen Rea',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Air Zoom Pegasus 37',
    image: 'assets/images/nike2.jpg',
    screenPreview: 'assets/images/nike2.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Air Zoom Pegasus 37 ',
    image: 'assets/images/nike3.jpg',
    screenPreview: 'assets/images/nike3.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Air Jordan 1 Zoom Air ',
    image: 'assets/images/nike4.jpg',
    screenPreview: 'assets/images/nike4.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
];

final reebok = [
  Movie(
    name: 'Classic Leather ',
    image: 'assets/images/reebok1.jpg',
    screenPreview: 'assets/images/reebok1.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Jeff Hille',
      'Jane Perry',
      'Colm Feore',
      'Isabella Hupper',
      'Stephen Rea',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Workout Plus Altered ',
    image: 'assets/images/reebok2.jpg',
    screenPreview: 'assets/images/reebok2.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Workout Plus ATI 90 ',
    image: 'assets/images/reebok3.jpg',
    screenPreview: 'assets/images/reebok3.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Vector Runner ',
    image: 'assets/images/reebok4.jpg',
    screenPreview: 'assets/images/reebok4.jpg',
    description:
        'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
        'a magic lamp that has the power to make their deepest wishses come true.',
    type: 'Fantasy',
    hours: 2,
    director: 'Ritchie',
    stars: 5,
    actors: [
      'Will Smith',
      'Joey Ansah',
      'Naomi Scott',
      'Marwan Kenzari',
      'Nasim Pedrad',
    ],
    dates: dates,
    seats: seats,
  ),
];
