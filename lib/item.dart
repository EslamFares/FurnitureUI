import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Sofa',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.card_giftcard,
                size: 30,
                color: Colors.teal[900],
              ),
            )
          ],
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              })),
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.only(right: 10,left: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://m.media-amazon.com/images/S/aplus-media/sc/54675166-6291-4641-a816-4556e15e925e.__CR0,0,970,600_PT0_SX970_V1___.jpg')),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Blue Safe',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      '\$65',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              ),
              Wrap(
                children: <Widget>[
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac iaculis nulla. Suspendisse sollicitudin neque in felis.',
                    style:
                        TextStyle(color: Colors.grey, height: 1.4, fontSize: 16),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Color',
                      style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(width: 20),
                    colorCircle(color: Colors.teal[900]),
                    colorCircle(color: Colors.deepPurple[900]),
                    colorCircle(color: Colors.amber),
                    colorCircle(color: Colors.black),
                    colorCircle(color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Quantity',
                      style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(.5),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(width: 5),
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.teal[900],
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              )),
                          Text(
                            '01',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w900),
                          ),
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.teal[900],
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(
                                Icons.remove,
                                size: 30,
                                color: Colors.white,
                              )),
                          SizedBox(width: 5),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                  width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(.5),
                          borderRadius: BorderRadius.circular(50.0)),
                      child:Center(child: Text('Add to Cart',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900),))
              ),
              SizedBox(height: 15),
              Container(
                  width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.teal[900],
                          borderRadius: BorderRadius.circular(50.0)),
                      child:Center(child: Text('Buy Now',style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.w900),))
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colorCircle({@required Color color}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Material(
        borderRadius: BorderRadius.circular(50.0),
        elevation: 5,
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle,
              color: color),
        ),
      ),
    );
  }
}
