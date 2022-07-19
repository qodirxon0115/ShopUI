
import 'package:flutter/material.dart';

class ShopUI extends StatefulWidget {
  const ShopUI({Key? key}) : super(key: key);

  @override
  State<ShopUI> createState() => _ShopUIState();
}

class _ShopUIState extends State<ShopUI> {

  final List<String> _listItem = [
    "assets/images/image_1.jpg",
    "assets/images/image_2.jpeg",
    "assets/images/image_3.jpg",
    "assets/images/image_4.webp",
    "assets/images/image_5.jpg",
    "assets/images/image_6.jpg",
    "assets/images/image_7.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("7", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ],
        title: const Padding(
          padding: EdgeInsets.all(35),
          child: Text("Apple Products",style: TextStyle(color: Colors.white),),
        ),
          leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          //#header
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/image_3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                    LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.3),
                      ]
                    ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("LifeStyle Sale",
                      style:
                      TextStyle(color: Colors.white,fontSize: 35),),
                    const SizedBox(height: 30,),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child:
                        Text("Shop now",
                          style: TextStyle(color: Colors.black54,
                            fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
          ),
          //#body
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                mainAxisSpacing: 20,
                  crossAxisCount: 1,
                children:
                  _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.favorite,
              color: Colors.red, size: 40,)
          ],
        ),
      ),
    );

  }



}
