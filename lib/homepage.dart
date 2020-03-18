import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List imgList = [
    'assets/images/c7.jpg',
    'assets/images/c8.jpg',
    'assets/images/c9.jpg',
    'assets/images/c1.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          elevation: 0.5,
          leading: IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(top: 22),
              child: FaIcon(
                FontAwesomeIcons.gopuram,
                color: Colors.black,
              ),
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          backgroundColor: Color(0xfffdfcfa),
          title: Padding(
            padding: const EdgeInsets.only(top: 34),
            child: Text(
              'Hare Krishna!',
              textScaleFactor: 1.7,
              style: GoogleFonts.courgette(
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 28, 10, 0),
              child: Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 70.0,
              child: DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Welcome!',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.greenmangomore.com/wp-content/uploads/2019/08/akshay-kumar-replaced-in-bhool-bhulaiyaa-2-1-785x442.jpg'),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.newspaper,
                size: 23.0,
              ),
              title: Text('Latest News'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'video');
              },
              leading: FaIcon(
                FontAwesomeIcons.video,
                size: 23.0,
              ),
              title: Text('Latest Videos'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.bloggerB,
                size: 23.0,
              ),
              title: Text('Latest Blogposts'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.calendarDay,
                size: 23.0,
              ),
              title: Text('Latest Events'),
            ),
            Divider(
              thickness: 1.0,
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.prayingHands,
                size: 23.0,
              ),
              title: Text('Live Aarti'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.quoteRight,
                size: 23.0,
              ),
              title: Text('Quote of the Day'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.solidCalendarCheck,
                size: 23.0,
              ),
              title: Text('Set Remider for Next Aarti'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.book,
                size: 23.0,
              ),
              title: Text('Our Books'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'donate');
              },
              leading: FaIcon(
                FontAwesomeIcons.rupeeSign,
                size: 23.0,
              ),
              title: Text('Donate'),
            ),
            Divider(
              thickness: 1.0,
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.userPlus,
                size: 23.0,
              ),
              title: Text('Login/Signup'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.solidEnvelope,
                size: 23.0,
              ),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, 'contact');
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.infoCircle,
                size: 23.0,
              ),
              title: Text('About ISKCON'),
            ),
            Divider(
              thickness: 1.0,
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xffffffff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Events',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            CarouselSlider(
              height: 200.0,
              initialPage: 0,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 5),
              scrollDirection: Axis.horizontal,
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Top Stories',
                  style: TextStyle(fontSize: 28.0),
                ),
              ),
            ),
            Card(
              elevation: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    trailing: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(
                          'https://sacredattunements.com/wp-content/uploads/2018/05/karma-loop.jpeg'),
                    ),
                    title: Text(
                      'One Stop Solution for Bad Karma',
                      textScaleFactor: 1.1,
                    ),
                    subtitle: Text(
                      'Read now how to clean your karma',
                      textScaleFactor: 0.9,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    trailing: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(
                          'https://4.imimg.com/data4/QQ/SH/IMOB-35378815/holicolour-500x500.jpg'),
                    ),
                    title: Text(
                      'Safe Holi',
                      textScaleFactor: 1.1,
                    ),
                    subtitle: Text(
                      'Celebrating Holi while still being eco-friendly!',
                      textScaleFactor: .9,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    trailing: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(
                          'https://www.akanksha.org/wp-content/themes/Akanksha/img/logo.jpg'),
                    ),
                    title: Text(
                      'Akanksha Charity Drive',
                      textScaleFactor: 1.1,
                    ),
                    subtitle: Text(
                      'Spreading Smiles with everyone!',
                      textScaleFactor: .9,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    trailing: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0IhVxaCXHjDw_eHDFsOEFe4cds9tVpJiuegHPrqgKBwBWtTHf'),
                    ),
                    title: Text(
                      'The Significance of Makar Sankranti',
                      textScaleFactor: 1.1,
                    ),
                    subtitle: Text(
                      'Makar Sankranti signifies the entry of Sun God(Suryadev) in...',
                      textScaleFactor: .9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
