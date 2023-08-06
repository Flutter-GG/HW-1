import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.check_rounded),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(177, 255, 255, 255),
        elevation: 0,
        title: const Text('Search', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(232, 213, 212, 212),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search'),
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                // Filtter
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 400,
                          color: const Color.fromARGB(255, 249, 248, 247),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment:CrossAxisAlignment.start ,
                               children: <Widget>[

                                const SizedBox(height: 20,),
                                const Text('Filter',
                                style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                
                                const SizedBox(height: 20,),
                               const Text('Category',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                               
                               const SizedBox(height: 20,),

                               Row(
                                children: [
                               const SizedBox(width: 20),
                               Container(
                               padding: const EdgeInsets.symmetric(
                               horizontal: 30, vertical: 12),
                               decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: const Color.fromARGB(255, 214, 216, 218),
                                ),
                               child: 
                               const Text(
                                'Breakfast',
                               style: TextStyle(color: Colors.black),
                               ),
                                ),
                               const SizedBox(width: 10),
                               Container(
                               padding: const EdgeInsets.symmetric(
                               horizontal: 30, vertical: 12),
                               decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: const Color.fromARGB(255, 214, 216, 218),
                               ),
                               child: const Text(
                                'Lunch',
                               style: TextStyle(color: Colors.black),
                                 ),
                                ),
                               const SizedBox(width: 10),
                               Container(
                               padding: const EdgeInsets.symmetric(
                               horizontal: 30, vertical: 12),
                               decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: const Color.fromARGB(255, 214, 216, 218),
                               ),
                               child: const Text(
                               'Dinner',
                               style: TextStyle(color: Colors.black),
                                     ),
                                    ),
                                   ],
                                  ),
                                  const SizedBox(height: 20,),
                                const Text('Recip Type',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                              ],
                            
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/IMG_6584.jpg',
                    width: 50,
                    height: 80,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 214, 216, 218),
                    ),
                    child: const Text(
                      'Breakfast',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 214, 216, 218),
                    ),
                    child: const Text(
                      'Lunch',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 214, 216, 218),
                    ),
                    child: const Text(
                      'Dinner',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Popular Recipes',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 140),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff70b9be)),
                )
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    margin: const EdgeInsets.all(7),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/Image3.jpg')),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.all(10),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Egg & Avogaasdasddo",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    margin: const EdgeInsets.all(7),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/Image4.jpeg')),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.all(10),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Bowel of rice",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    margin: const EdgeInsets.all(7),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/Image5.jpeg')),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.all(10),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Chicken Sandwitch",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Editor\'s Choice',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 140),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff70b9be)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 2, bottom: 10),
                    child: SizedBox(
                      height: 90,
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/Image5.jpeg'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .62,
                                  child: const Text(
                                    "Easy homemade beef burger",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: ClipOval(
                                        child: Image.asset(
                                            'assets/images/Image8.jpg'),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "James Spader",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8)),
                            height: 30,
                            width: 30,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
         Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: SizedBox(
                      height: 90,
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/Image7.jpg'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .62,
                                  child: const Text(
                                    "Easy homemade beef burger",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15.0,
                                      child: ClipOval(
                                        child: Image.asset(
                                            'assets/images/Image8.jpg'),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "James Spader",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8)),
                            height: 30,
                            width: 30,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
