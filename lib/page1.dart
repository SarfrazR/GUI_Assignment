import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class page_1 extends StatelessWidget {
  page_1({Key? key,required this.image, required this.followers});

  String image = '';
  String followers = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      body: Center(child: Container(
        height: double.infinity,
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 9,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(image,),
            ),
            Container(
              height: 30,
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Flutter is Awsome',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 15,
              width: 70,
              alignment: Alignment.center,
              child: Text(
                'Student',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Container(
              height: 10,
              width: double.infinity,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 70,
                  width: 70,
                  child: textColumn('\n872.4K', 'Hits'),
                ),
                Container(
                  height: 70,
                  width: .5,
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.transparent,
                  height: 70,
                  width: 70,
                  child: textColumn('\n$followers', 'Followers'),
                ),
                Container(
                  height: 70,
                  width: .5,
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.transparent,
                  height: 70,
                  width: 70,
                  child: textColumn('\n127', 'Following'),
                ),
              ],
            ),
            Container(
              height: 10,
              width: double.infinity,
              color: Colors.transparent,
            ),
            Container(
              height: .1,
              width: double.maxFinite,
              color: Colors.grey,
            ),
            Container(
              height: 10,
              width: double.infinity,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundButton(),
                roundOutlinedButton('Website'),
              ],
            ),
            Container(
              height: 15,
              width: double.infinity,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Customization(text: 'Top News', fontsize: 14),
                Customization(text: 'Recents', fontsize: 14),
              ],
            ),
            Container(
              height: 5,
              width: double.infinity,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
              height: 1.5,
              width: 200,
              color: Colors.pink.shade300,
            ),
              Container(
              height: 1,
              width: 200,
              color: Colors.grey.shade300,
            ),
            ],
            ),
            Container(
              height: 5,
              width: double.infinity,
              color: Colors.transparent,
            ),
            SizedBox(
                        height: 190,
                        width: 400,
                        child: Column(
                          children: [
                            listNews(
                                'assets/News/1.PNG',
                                'Wow! USA Develops New\nWay of Faster and More ...',
                                'Health'),
                                Container(
              height: 5,
              width: double.infinity,
              color: Colors.transparent,
            ),
                              listNews(
                                'assets/News/2.PNG',
                                'Machester United Adds a\nFamous Portugal Player ...',
                                'Sport'),
                            
                            
                          ],
                        ),
                      ),
           
          ],
        ),
      ),)
    )));
  }
}

  listNews(String image, String text, String tag) {
    return Container(
      height: 90,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(width: 2, color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 117,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Sarfraz Rafique',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(
                                width: 1,
                                color: Colors.red.shade300,
                              )),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Customization(
                      text: tag,
                      fontsize: 14,
                      colors: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

Container roundOutlinedButton(String text) {
  return Container(
    width: 185,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
    child: OutlinedButton(
      style: ButtonStyle(
        side: MaterialStateBorderSide.resolveWith((states) => BorderSide(
              width: 1,
              color: Colors.red.shade300,
            )),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.language,
            color: Colors.red.shade300,
          ),
          const SizedBox(
            width: 10,
          ),
          Customization(
            text: text,
            fontsize: 14,
            colors: Colors.red.shade300,
          )
        ],
      ),
    ),
  );
}

Container RoundButton() {
  return Container(
    width: 185,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => Colors.red.shade300,
        ),
        elevation: MaterialStateProperty.resolveWith((states) => 0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.person_add_alt_1,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Customization(
            text: 'Follow',
            fontsize: 14,
            colors: Colors.white,
          )
        ],
      ),
    ),
  );
}

textColumn(String main, String sub) {
  return Column(
    children: [
      Customization(text: main, fontsize: 16),
      Container(
        height: 10,
        width: double.infinity,
        color: Colors.transparent,
      ),
      Customization(text: sub, fontsize: 14)
    ],
  );
}

Customization(
    {required String text,
    required double fontsize,
    Color colors = Colors.black}) {
  return Text(text,
      style: TextStyle(
        fontSize: fontsize,
        color: colors,
      ));
}
