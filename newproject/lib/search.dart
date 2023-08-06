import 'package:flutter/material.dart';

void main() {
  runApp(Search());
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: find());
  }
}

class CardItm {
  final String urlImage;
  final String title;
  final String subtitle;

  CardItm({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class find extends StatelessWidget {
  final List<CardItm> items = [
    CardItm(
      urlImage:
          'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/lamb-biryani-83e5c3d.jpg',
      title: 'kabsah',
      subtitle: '99 SR',
    ),
    CardItm(
      urlImage:
          'https://www.statesman.com/gcdn/presto/2022/07/05/NAAS/ef79f1a3-4274-46f5-bc66-087aee399f16-FM7CInNQ.jpeg',
      title: 'Salad',
      subtitle: '20 SR',
    ),
    CardItm(
      urlImage:
          'https://media-cdn.tripadvisor.com/media/photo-s/05/d4/83/3f/fast-food-restaurant.jpg',
      title: 'grilled',
      subtitle: '100 SR',
    ),
    CardItm(
      urlImage:
          'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/lamb-biryani-83e5c3d.jpg',
      title: 'mango',
      subtitle: 'Price 2',
    ),
    CardItm(
      urlImage:
          'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/lamb-biryani-83e5c3d.jpg',
      title: 'mango',
      subtitle: 'Price 2',
    ),
    CardItm(
      urlImage:
          'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/lamb-biryani-83e5c3d.jpg',
      title: 'mango',
      subtitle: 'Price 2',
    ),
    CardItm(
      urlImage:
          'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/lamb-biryani-83e5c3d.jpg',
      title: 'mango',
      subtitle: 'Price 2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Search'),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Search',
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 70, 2),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),

              // for searching

              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(243, 203, 241, 231),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: 'eg.. food .. drinks ..',
                    //icone
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color.fromARGB(66, 164, 31, 31)),
              ),

              //1
              Container(
                height: 250,
                child: ListView.separated(
                  padding: EdgeInsets.only(top: 60),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  separatorBuilder: (context, _) => SizedBox(width: 10),
                  itemBuilder: (context, index) =>
                      buildCard(context, item: items[index]),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildCard(BuildContext context, {required CardItm item}) => Container(
        width: 200,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 2 / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(item.urlImage),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoePage(item: item)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              item.subtitle,
              style: TextStyle(fontSize: 18),
            ),
            Text(
              item.title,
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
            
          ],
        ),
      );
      
}


class ShoePage extends StatelessWidget {
  final CardItm item;

  const ShoePage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(item.title),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(item.urlImage),
            SizedBox(height: 20),
            Text(
              item.subtitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),])));   
  

}

}