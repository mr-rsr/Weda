import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool _pinned = true;
    bool _snap = false;
    bool _floating = false;
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Badal',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.white,
          floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add), onPressed: () => {null}),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                snap: true,
                floating: true,
                expandedHeight: 260.0,
                automaticallyImplyLeading: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding:  EdgeInsets.fromLTRB(0,5,12,5),
                        child: Row(
                          children: [
                           IconButton(
                             splashRadius: 20,
                                 onPressed: () => {null},
                                 icon:Icon(Icons.menu)),
                            SizedBox(
                              height:35,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Search city',
                                    hintStyle: const TextStyle(fontSize: 10),
                                    suffixIcon:IconButton(
                                        onPressed: () => {null},
                                        icon: const Icon(Icons.search),iconSize: 15,),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(35),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PreferredSize(
                        preferredSize:
                            const Size.fromHeight(30.0), // here the desired height
                        child: AppBar(
                          automaticallyImplyLeading: false,
                          leading: const Icon(Icons.location_city),
                          title: const Text('Raigarh'),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                      ),
                      
                      
                      // style: TextStyle(color: Colors.white),
                    ],
                  ),
                  centerTitle: true,
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(30.0),
                  child: Container(
                    //color: Colors.white,
                    alignment: Alignment.center,
                    child: const Text('Badal'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
