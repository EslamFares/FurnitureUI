import 'package:flutter/material.dart';
import 'item.dart';

class HomeDecorScreen extends StatefulWidget {
  @override
  _HomeDecorScreenState createState() => _HomeDecorScreenState();
}

class _HomeDecorScreenState extends State<HomeDecorScreen> {
  List<String> _images = [
    'https://t3.ftcdn.net/jpg/03/70/83/34/240_F_370833475_FmbFH6CoKbdqYaY1KTBS5SXSet60lVJr.jpg',
    'https://t4.ftcdn.net/jpg/01/96/17/93/240_F_196179368_0NcMt9TvP96652D73Zrqwh68yXbYPlLF.jpg',
    'https://t3.ftcdn.net/jpg/03/00/92/98/240_F_300929807_H56grF4BEgob1m600cZgAVzBcgCcSLAa.jpg',
  ];

  List<Map<String, dynamic>> _cats = [
    {'title': 'Chairs', 'isSelected': true},
    {'title': 'Sofa', 'isSelected': false},
    {'title': 'Tables', 'isSelected': false},
  ];
  List<String> imgListBottom = [
    'https://thefurniturecentre.ie/wp-content/uploads/2020/04/kENDALL-ACCENT-CHAIR-TEAL-TARAHOME-THE-FURNITURE-CENTRE_burned-e1588099037154.png',
    'https://www.pngonly.com/wp-content/uploads/2017/06/free-furniture-png-10201.png',
    'https://butlerhumanservices.com/wp-content/uploads/2020/01/chair.png',
    'https://thefurniturecentre.ie/wp-content/uploads/2020/04/jools_copper_velvet_footstool_burned.png',
    'https://images.squarespace-cdn.com/content/v1/51108043e4b037c811aa5dd5/1599800882696-NSXFESHFFOG5NPN9IWX2/ke17ZwdGBToddI8pDm48kBE6yTQkd32OzxpGUrLlI24UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2kr3LSJStRt0SEFa3wvwcNvqkei29ZPtK0BPbbFG4ZtYKMshLAGzx4R3EDFOm1kBS/Venus+-+Black+frame+650.png',
  ];
  int _currentCat = 0;

  Widget _catCard({
    int index,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          _cats[_currentCat]['isSelected'] = false;
          _currentCat = index;
          _cats[_currentCat]['isSelected'] = true;
        });
      },
      child: Container(
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 6),
        width: MediaQuery.of(context).size.width / 3.3,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.teal, width: 1),
            borderRadius: BorderRadius.circular(25),
            color: _cats[index]['isSelected'] ? Colors.teal : Colors.white),
        child: Center(
          child: Text(
            _cats[index]['title'],
            style: TextStyle(
                color: _cats[index]['isSelected'] ? Colors.white : Colors.teal),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Container(
            width: 40,
            margin: EdgeInsets.all(10),
            height: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://t4.ftcdn.net/jpg/02/61/09/15/240_F_261091593_tnCcIkxFtKvwfJQ44EiezFSzQufXjToS.jpg')),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.only(top: 70, left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 - 100,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 140, left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Explore',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 10,
                    right: 10,
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: _images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Container(
                              height: 200,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 135,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(_images[index]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            );
                          }),
                    ))
              ],
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: _cats.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return _catCard(index: index);
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imgListBottom.length,
                    itemBuilder: (ctx, index) {
                      return _itemCard(index);
                    }))
          ],
        ),
      ),
    );
  }

  Widget _itemCard(index) {
    return GestureDetector(
        onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ItemScreen()));
          },
          child: Stack(
        children: [
          Container(
            width: 140,
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 210,
          ),
          Container(
            margin: EdgeInsets.only(left: 100),
            width: 50,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.teal),
            child: Center(
              child: Text(
                'New',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 8,
            child: Container(
              width: 140,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.withOpacity(0.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Green Chaire'),
                  Row(
                    children: [
                      Text('\$ 30'),
                      Expanded(child: SizedBox()),
                      Icon(Icons.star),
                      Text('4.9')
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            right: 10,
            child: Container(
              height: 150,
              width: 130,
              decoration: BoxDecoration(

                  // color: Colors.red,
                  image:
                      DecorationImage(image: NetworkImage(imgListBottom[index]))),
            ),
          )
        ],
      ),
    );
  }
}
