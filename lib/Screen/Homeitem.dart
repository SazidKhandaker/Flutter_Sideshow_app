import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeLand extends StatelessWidget {
  const HomeLand({super.key});

  @override
  Widget build(BuildContext context) {
    sliverchidl(String chobi, String productname, double rating,
        String description, Color clrofborder) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(4, 4), blurRadius: 10, color: Colors.black),
              BoxShadow(
                  offset: Offset(-4, -4), blurRadius: 10, color: Colors.black),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 5, color: clrofborder)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage("$chobi"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      fctnText(
                          "$productname", 22.0, Colors.black87, FontWeight.bold)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.orange,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0, left: 10),
                          child: Text(
                            "$rating",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    fctnText("$description", 15.0, Colors.black)
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    var sizeOfHight = MediaQuery.of(context).size.height;
    var SizeofWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: fctnText(
                  "Hotel Room Page", 24.0, Colors.white, FontWeight.bold),
              backgroundColor: Colors.redAccent,
              centerTitle: true,
              expandedHeight: sizeOfHight * 0.50,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://images.unsplash.com/photo-1563911302283-d2bc129e7570?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              actions: [
                Icon(
                  Icons.menu,
                  size: 40,
                  color: Colors.black,
                )
              ],
              leading: Icon(
                Icons.arrow_back,
                size: 40,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  sliverchidl(
                      "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80",
                      "Hotel moon",
                      7.9,
                      "Hill view hotel",
                      Colors.deepOrange),
                  sliverchidl(
                      "https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=449&q=80",
                      "Sun Resort",
                      9.2,
                      "Nice Resort.",
                      Colors.black45),
                  sliverchidl(
                      "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                      "Le-maradian",
                      9.8,
                      "5 star hotel",
                      Colors.indigo)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  fctnText(String name, double size, Color clr, [FontWeight? fw]) {
    return Text(
      "$name",
      style: TextStyle(
        fontSize: size,
        color: clr,
        fontWeight: fw,
      ),
    );
  }
}
