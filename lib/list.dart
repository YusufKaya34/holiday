import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.keyboard_backspace_outlined,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_list_outlined,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Altınordu',
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            singleItem(
                location: 'Taşbaşı',
                distance: '4 km',
                isMarked: false,
                duration: '12 dk',
                name: 'Tarihi Ev',
                imgPath: 'assets/images/ev.jpg'),
            singleItem(
                location: 'Taşbaşı',
                distance: '7 km',
                isMarked: true,
                duration: '25 dk',
                name: 'Konak',
                imgPath: 'assets/images/konak.jpg'),
            singleItem(
                location: 'Taşbaşı',
                distance: '8 km',
                isMarked: true,
                duration: '45 dk',
                name: 'Tarihi Ev',
                imgPath: 'assets/images/tarihi.jpg')
          ],
        ),
      ),
    );
  }

  Card singleItem(
      {required String imgPath,
      required String location,
      required String name,
      required String distance,
      required String duration,
      required bool isMarked}) {
    return Card(
      margin: EdgeInsets.only(bottom: 8),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imgPath)),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 4,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            location,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      Icon(
                        Icons.bookmark,
                        color: isMarked
                            ? Colors.pink
                            : Colors.white.withOpacity(0.5),
                        size: 36,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '$distance · $duration',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.grey, size: 18),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
