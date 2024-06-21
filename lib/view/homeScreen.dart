import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/viewModel/DataCubit/data_cubit.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    DataCubit.get(context).readJson();
  }

  TextEditingController SearchController = TextEditingController();

  List<String> images = [
    "assets/images/5959002 1.png",
    "assets/images/5959002 1.png",
  ];
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: Center(
              child: Text(
            "Slash.",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          )),
        ),
        centerTitle: true,
        title: Container(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/location.png",
                width: 25,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nasr City"),
                  Text(
                    "Cairo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 35,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Image.asset(
              "assets/images/notification.png",
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 25, left: 5, right: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(228, 228, 228, 0.52)),
                    width: width * 0.7,
                    height: height * 0.06,
                    child: TextField(
                      controller: SearchController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here..",
                          prefixIcon: Icon(Icons.search_rounded)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(228, 228, 228, 0.52),
                        borderRadius: BorderRadius.circular(15)),
                    width: 65,
                    height: 50,
                    child: Image.asset("assets/images/settings.png"),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //Carousel Slider
              CarouselSlider(
                options: CarouselOptions(height: 130.0),
                items: [
                  1,
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: Image.asset(
                          images[i],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(228, 228, 228, 0.52),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(41, 41, 41, 1),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                                child:
                                    Image.asset("assets/images/fashion.png")),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Fashion",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(41, 41, 41, 1),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                                child: Image.asset("assets/images/games.png")),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Games",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(41, 41, 41, 1),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                                child:
                                    Image.asset("assets/images/Glasses.png")),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Accessories",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(41, 41, 41, 1),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                                child: Image.asset(
                                    "assets/images/Book Blank.png")),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Books",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(41, 41, 41, 1),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                                child: Image.asset(
                                    "assets/images/Book Blank.png")),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Artists",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //Best selling
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Selling",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(228, 228, 228, 0.52),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: width,
                height: 165,
                child: BlocConsumer<DataCubit, DataState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: DataCubit.get(context).itemsBest.length,
                      itemBuilder: (BuildContext context, int index) {
                        final itemBest =
                            DataCubit.get(context).itemsBest[index];
                        return Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 10),
                                  width: 120,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/dress.png"))),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 20,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Center(
                                        child: Icon(Icons.favorite_border)),
                                    decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(70)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(itemBest.name!),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${itemBest.price}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 1, right: 5),
                                  width: 25,
                                  height: 25,
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(41, 41, 41, 1),
                                      borderRadius: BorderRadius.circular(70)),
                                )
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // New Arrival
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arrival",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(228, 228, 228, 0.52),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ///////////
              Container(
                width: width,
                height: 165,
                child: BlocConsumer<DataCubit, DataState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: DataCubit.get(context).itemsArrival.length,
                      itemBuilder: (BuildContext context, int index) {
                        final itemArrival =
                            DataCubit.get(context).itemsArrival[index];
                        return Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 10),
                                  width: 120,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      // color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/man.png"))),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 20,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Center(
                                        child: Icon(Icons.favorite_border)),
                                    decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(70)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(itemArrival.name!),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${itemArrival.price!}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 1, right: 5),
                                  width: 25,
                                  height: 25,
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(41, 41, 41, 1),
                                      borderRadius: BorderRadius.circular(70)),
                                )
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // Recommended For you
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended for you",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(228, 228, 228, 0.52),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ////////////
              Container(
                width: width,
                height: 165,
                child: BlocConsumer<DataCubit, DataState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is SuccessGetDataState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            DataCubit.get(context).itemsRecommended.length,
                        itemBuilder: (BuildContext context, int index) {
                          final itemRecommended =
                              DataCubit.get(context).itemsRecommended[index];
                          return Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5, right: 10),
                                    width: 120,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/stitch.png"))),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 20,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      child: Center(
                                          child: Icon(Icons.favorite_border)),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(70)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(itemRecommended.name!),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$${itemRecommended.price!}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 1, right: 5),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                        child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(41, 41, 41, 1),
                                        borderRadius:
                                            BorderRadius.circular(70)),
                                  )
                                ],
                              )
                            ],
                          );
                        },
                      );
                    } else if (state is ErrorGetDataState) {
                      return Center(
                        child: Text("Error Getting Data"),
                      );
                    } else {
                      return Center(
                        child: Text("Error"),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
