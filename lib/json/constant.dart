import 'package:flutter/material.dart';

const String APP_TITLE = 'The Music';
const PLAYING_BG = [0xFFDB4437, 0xFFfbced1];
// const PLAYING_BG = [0xFF111111, 0xFFfcccccc];

const List<Map<String, Object>> categories = [
  {
    'title': 'Rock',
    'imgUrl':
        'https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Pop',
    'imgUrl':
        'https://images.unsplash.com/photo-1567131308523-383d0fea9671?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Classic',
    'imgUrl':
        'https://images.unsplash.com/photo-1532956985363-fb868d867e67?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Rap',
    'imgUrl':
        'https://images.unsplash.com/photo-1589929168117-cd9ec5f27ab7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Others',
    'imgUrl':
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
];

const List<Map<String, Object>> theHits = [
  {
    'title': 'The Star',
    'singer': 'Summuel',
    'imgUrl':'https://images.unsplash.com/photo-1570915226741-cc7d678ad7ce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Rock',
    'singer': 'Sonny',
    'imgUrl':'https://images.unsplash.com/photo-1520271348391-049dd132bb7c?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'New Version',
    'singer': 'Micheal',
    'imgUrl':'https://images.unsplash.com/photo-1608770764376-9c94a33959cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Bad Dream',
    'singer': 'Priya',
    'imgUrl':
        'https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'singer': 'Davika',
    'imgUrl':
        'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
];

const List<Map<String, Object>> newMusic = [
  {
    'title': 'Summer',
    'singer': 'Kaka Toure',
    'imgUrl':
        'https://images.unsplash.com/photo-1561181110-9452af164099?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Walking Away',
    'singer': 'David Villa',
    'imgUrl': 'https://images.unsplash.com/photo-1521417170173-29cd2de82858?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTQzfHxmYXNoaW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'New Me',
    'singer': 'Jenny Mina',
    'imgUrl':
        'https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Outside',
    'singer': 'Zakha',
    'imgUrl':
        'https://images.unsplash.com/photo-1529847556963-9653a9366021?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80',
  },
  {
    'title': 'Sun and Moon',
    'singer': 'Kanu',
    'imgUrl':
        'https://images.unsplash.com/photo-1596285508507-5da6bec59433?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  }
];

const List<String> slider = [
  'https://images.unsplash.com/photo-1614680376573-df3480f0c6ff?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1549034937-9d542256fdaf?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1513829596324-4bb2800c5efb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
];

List itemsTab = [
  {"icon": Icons.library_music, "size": 28.0},
  {"icon": Icons.explore, "size": 28.0},
  {"icon": Icons.play_circle_filled, "size": 28.0},
  {"icon": Icons.favorite, "size": 28.0},
  {"icon": Icons.person, "size": 28.0},
];

 List explores = [
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1521417170173-29cd2de82858?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTQzfHxmYXNoaW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1561181110-9452af164099?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1570915226741-cc7d678ad7ce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1520271348391-049dd132bb7c?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1608770764376-9c94a33959cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1567131308523-383d0fea9671?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"}
  ];

List favorites = [
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1521417170173-29cd2de82858?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTQzfHxmYXNoaW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1561181110-9452af164099?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1570915226741-cc7d678ad7ce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1520271348391-049dd132bb7c?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1523497894237-6809839f72dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"},
    {"title" : "Take me to your heart", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1608770764376-9c94a33959cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"},
    {"title" : "I miss you like crazy", "singer" : "Jhonny Jason",
    "image" : "https://images.unsplash.com/photo-1567131308523-383d0fea9671?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"}
  ];
