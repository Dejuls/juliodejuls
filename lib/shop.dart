import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final double price;

  CartItem({required this.name, required this.price});
}

class GoodsItem {
  final String name;
  final String units;

  final double price;
  final String imgurl;

  GoodsItem(
      {required this.name,
        required this.units,
        required this.price,
        required this.imgurl});
}

class JulioDeShop extends StatefulWidget {
  const JulioDeShop({Key? key}) : super(key: key);

  @override
  State<JulioDeShop> createState() => _JulioDeShopState();
}

class _JulioDeShopState extends State<JulioDeShop> {
  List<CartItem> cart = [];
  List<GoodsItem> itemz = [
    GoodsItem(
        name: 'lotion',
        units: 'Kgs',
        price: 5000,
        imgurl: 'assets/images/image1.jpg'),
    GoodsItem(
        name: 'bread',
        units: 'Doz',
        price: 5000,
        imgurl: 'assets/images/image6.jpg'),
    GoodsItem(
        name: 'jelly',
        units: 'Lbs',
        price: 5000,
        imgurl: 'assets/images/image5.jpg'),
    GoodsItem(
        name: 'phone',
        units: 'M',
        price: 5000,
        imgurl: 'assets/images/image4.jpg'),
    GoodsItem(
        name: 'pen',
        units: 'Kgs',
        price: 5000,
        imgurl: 'assets/images/image3.jpg'),
    GoodsItem(
        name: 'soap',
        units: 'gms',
        price: 5000,
        imgurl: 'assets/images/image2.jpg'),
  ];
  void shopAhorra(GoodsItem jux) {
    setState(() {
      cart.add(CartItem(name: jux.name, price: jux.price));
    });
  }

  // int _jul = 0;
  // List<Widget> paginas = [GoodsPage(), JuliodeShop()];
  ScrollController _jiaomi = ScrollController();
  @override
  void initState() {
    super.initState();
    _jiaomi = ScrollController();
  }

  @override
  void dispose() {
    _jiaomi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  BottomNavigationBar(
        //   currentIndex: _jul,
        //   backgroundColor: Color(0xd1161414),
        //   items: [
        //     BottomNavigationBarItem(
        //       backgroundColor: Color(0xd1161414),
        //       icon: Icon(
        //         Icons.home_filled,
        //         color: Colors.red,
        //       ),
        //       label: 'home',
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Color(0xd1161414),
        //       icon: Icon(
        //         Icons.category_outlined,
        //         color: Colors.red,
        //       ),
        //       label: 'type',
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Color(0xd1161414),
        //       icon: Icon(
        //         Icons.card_giftcard,
        //         color: Colors.red,
        //       ),
        //       label: 'offer',
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Color(0xd1161414),
        //       icon: Icon(
        //         Icons.account_circle,
        //         color: Colors.red,
        //       ),
        //       label: 'profile',
        //     ),
        //     BottomNavigationBarItem(
        //       backgroundColor: Color(0xd1161414),
        //       icon: Icon(
        //         Icons.shopping_cart,
        //         color: Colors.red,
        //       ),
        //       label: 'cart',
        //     ),
        //   ],
        //   onTap: (index) {
        //     setState(() {
        //       _jul = index;
        //     });
        //   },
        // ),
        appBar: AppBar(
          backgroundColor: Color(0xd1161414),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          centerTitle: true,
          title: Text(
            textAlign: TextAlign.center,
            'CATEGORIES',
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 2),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xd1161414).withOpacity(1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 54.0,
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.red,
                              width: 1.5,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                size: 30,
                                color: Colors.red,
                              ),
                              hintText: '   Search',
                              alignLabelWithHint: true,
                              hintTextDirection: TextDirection.ltr,
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Kitchen',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: 4,
                              // ),
                              Container(
                                alignment: Alignment.center,
                                height: 270,
                                width: MediaQuery.of(context).size.width,
                                child: Expanded(
                                  child: ListView.builder(
                                    controller: _jiaomi,
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.only(left: 8),
                                    itemCount: itemz.length,
                                    itemBuilder: (context, index) {
                                      final goods = itemz[index];
                                      return Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Draggable<GoodsItem>(
                                          data: goods,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                .6,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.red,
                                                width: 3,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                Radius.circular(20),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(4.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        30),
                                                    child: Image(
                                                        image: AssetImage(
                                                            goods.imgurl),
                                                        fit: BoxFit.cover,
                                                        width: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .width *
                                                            .25),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    goods.name,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 35,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    goods.units +
                                                        '. ' +
                                                        '\Shs.${goods.price.toStringAsFixed(2)}',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          feedback: Container(
                                            width: 100,
                                            height: 50,
                                            color: Colors.blue.withOpacity(.5),
                                            child: Center(
                                              child: Opacity(
                                                opacity: 0.4,
                                                child: Image(
                                                  image:
                                                  AssetImage(goods.imgurl),
                                                  fit: BoxFit.cover,
                                                  width: double.infinity,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DragTarget<CartItem>(
                            builder: (BuildContext context,
                                List<CartItem?> incoming,
                                List<dynamic> rejected) {
                              return Material(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_cart_rounded,
                                        size: 60,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            onAccept: (CartItem juxa) {
                              setState(() {});
                            },
                            onWillAccept: (Object? data) {
                              return data is GoodsItem;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
