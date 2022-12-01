import 'package:flutter/material.dart';

class BookingSystem extends StatelessWidget {
  const BookingSystem({super.key});

  @override
  Widget build(context) {
    // final double size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(30),
            height: 55,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black54,
                ),
                Text(
                  "search",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(
                      "https://png.pngtree.com/png-clipart/20190903/original/pngtree-menu-icon-png-image_4419509.jpg"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Wrap(
            spacing: 10,
            children: const <Widget>[
              Chip(
                  padding: EdgeInsets.all(6),
                  shadowColor: Colors.blueGrey,
                  label: Text("All")),
              Chip(
                  padding: EdgeInsets.all(6),
                  backgroundColor: Colors.blueAccent,
                  shadowColor: Colors.blueGrey,
                  label: Text("Latest")),
              Chip(
                  padding: EdgeInsets.all(6),
                  shadowColor: Colors.blueGrey,
                  label: Text("Popular")),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 250,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          "https://media.istockphoto.com/id/514773355/photo/landscape-sunset-view-of-morain-lake-and-mountain-range.jpg?s=612x612&w=0&k=20&c=cgoEjmz16_8XqglLR-BprRBnT8s9glyLJBJXoTYuJmM=",
                          height: 200,
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        left: 60,
                        child: SizedBox(
                          child: Text(
                            "Banff National Park",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent),
                          ),
                        ),
                      ),
                      const Positioned(
                          right: 10,
                          top: 15,
                          child: Icon(Icons.save_alt_outlined))
                    ],
                  );
                }),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "  Hot Places",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
              Text(
                "See all  ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 360,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.network(
                            "https://cdn2.outdoorphotographer.com/2018/07/IMG_4758b.jpg",
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Positioned(
                          top: 30,
                          right: 1,
                          child: SizedBox(
                            child: Column(
                              children: [
                                const Text(
                                  "Japanese Lake",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 15,
                                    ),
                                    Text(
                                      "Japan",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  })),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "  Best Hotels",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              Text(
                "See all  ",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              )
            ],
          ),
          SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 190,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.network(
                            "https://i0.wp.com/www.thesuitelife.com.hk/wp-content/uploads/2015/08/Trisara-Phuket-Thailand-Sunset-Infinity-Pool-1024x768.jpg?resize=660%2C495&ssl=1",
                            height: 70,
                            width: 180,
                          ),
                        ),
                        const Positioned(
                            bottom: 55,
                            left: 50,
                            child: Text(
                              "Miami St Hotel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 18),
                            )),
                        Positioned(
                            bottom: 1.0,
                            left: 5,
                            child: Wrap(
                              spacing: 4,
                              children: const [
                                ActionChip(
                                    padding: EdgeInsets.all(10),
                                    avatar: CircleAvatar(
                                      child: Icon(
                                        Icons.bathtub,
                                        size: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    label: Text(
                                      "01",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    )),
                                ActionChip(
                                    avatar: CircleAvatar(
                                      child: Icon(
                                        Icons.business,
                                        size: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    label: Text(
                                      "02",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    )),
                                ActionChip(
                                    avatar: CircleAvatar(
                                      child: Icon(
                                        Icons.car_rental_rounded,
                                        size: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    label: Text(
                                      "03",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ))
                              ],
                            ))
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
