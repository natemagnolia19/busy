import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../card_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final String assetName = 'assets/img/card1.svg';

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.15),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Напишите, кто вам нужен',
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/img/inst-bg.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'МЫ В INSTAGRAM',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            'Актуальная информация, советы, розыгрыши призов и многое другое',
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 35,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.transparent),
                              gradient: LinearGradient(
                                  colors: [Colors.pink, Colors.purple])),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Подписаться',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/img/inst-bg.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'МЫ В FACEBOOK',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            'Актуальная информация, советы, розыгрыши призов и многое другое',
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 35,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.transparent),
                              gradient: LinearGradient(
                                  colors: [Colors.pink, Colors.purple])),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Подписаться',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/img/inst-bg.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FAQ',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            'Актуальная информация, советы, розыгрыши призов и многое другое',
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 35,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.transparent),
                              gradient: LinearGradient(
                                  colors: [Colors.pink, Colors.purple])),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Подписаться',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                initialPage: 2,
                viewportFraction: 1,
                height: 150,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    width: 26,
                    height: 10,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow[800],
                          Colors.orange[900],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Категории услуг',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              primary: true,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 0.72,
              mainAxisSpacing: MediaQuery.of(context).size.height / 45,
              crossAxisSpacing: 10,
              children: [
                CardWidget(
                  'Помощь по хозяйству',
                  'Уборка, химчистка, садовники и т.д.',
                  'assets/img/card1.png',
                ),
                CardWidget(
                  'Бытовой ремонт',
                  'Сантехники, электрики, мебельщики и.тд.',
                  'assets/img/card2.png',
                ),
                CardWidget(
                  'Отделка и строительсво',
                  'Штукатуры, кафельщики, кровля и т.д.',
                  'assets/img/card3.png',
                ),
                CardWidget(
                  'Техника и оборудование',
                  'Техники, мастера по ремонту техники и т.д',
                  'assets/img/card4.png',
                ),
                CardWidget(
                  'Перевозка и доставка',
                  'Газели, курьеры, грузчики и т.д.',
                  'assets/img/card5.png',
                ),
                CardWidget(
                  'IT и digital',
                  'Разработчики, дизайнеры, smm, фотографы и т.д.',
                  'assets/img/card6.png',
                ),
                CardWidget(
                  'Красота и здоровье',
                  'Массаж, эпиляция, уход за бровями, ногтями и т.д.',
                  'assets/img/card7.png',
                ),
                CardWidget(
                  'Деловые услуги',
                  'Бухгалтеры, юристы, cтраховщики и т.д.',
                  'assets/img/card8.png',
                ),
                CardWidget(
                  'Репетиторы и курсы',
                  'Языки, школьные предметы и т.д.',
                  'assets/img/card9.png',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Container(
                    width: 26,
                    height: 10,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow[800],
                          Colors.orange[900],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
