import 'package:desafio_neumorphic/app/modules/shared/ShadowText/ShadowText.dart';
import 'package:desafio_neumorphic/app/modules/shared/neuromorphic_container/neuromorphic_container_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Color(0xffF1F2F4);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeuromorphicContainerWidget(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black.withOpacity(.8),
            ),
            color: color,
            width: 40,
            height: 40,
            radius: 5,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NeuromorphicContainerWidget(
              child: Icon(
                Icons.format_align_left,
                color: Colors.black.withOpacity(.8),
              ),
              color: color,
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hi Zain,",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff232522)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "What would you like to have, we're offering some services.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xffAEAFB1)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE5E9EC),
                      offset: const Offset(0.0, 0.0),
                    ),
                    BoxShadow(
                      color: color,
                      offset: const Offset(0.0, 0.0),
                      spreadRadius: -5.0,
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xffE5E9EC),
                    width: 2,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Color(0xff767779)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Find your symptons",
                            hintStyle: TextStyle(color: Color(0xffBDBEC0))),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff767779),
                    )
                  ],
                ),
              ),
            ),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10),
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: NeuromorphicContainerWidget(
                    color: color,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.center_focus_weak,
                          size: 70,
                          color: Color(0xff2D2F2E),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ShadowText(
                          "Podologia",
                          style: TextStyle(
                            color: Color(0xff2D2F2E),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                 Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: NeuromorphicContainerWidget(
                    color: color,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.spa,
                          size: 70,
                          color: Color(0xff2D2F2E),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ShadowText(
                          "Urologia",
                          style: TextStyle(
                            color: Color(0xff2D2F2E),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                 Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: NeuromorphicContainerWidget(
                    color: color,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.signal_cellular_connected_no_internet_4_bar,
                          size: 70,
                          color: Color(0xff2D2F2E),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ShadowText(
                          "Cirurgia",
                          style: TextStyle(
                            color: Color(0xff2D2F2E),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                 Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: NeuromorphicContainerWidget(
                    color: color,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.leak_add,
                          size: 70,
                          color: Color(0xff2D2F2E),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ShadowText(
                          "Dermatologia",
                          style: TextStyle(
                            color: Color(0xff2D2F2E),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: NeuromorphicContainerWidget(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: color,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings_power,
                      size: 25,
                      color: Color(0xff2D2F2E),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff2D2F2E),
                          fontSize: 25),
                    )
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
