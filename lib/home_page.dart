import 'package:flutter/material.dart';
import 'package:vlogging_app/const_widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _pinned = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 160.0,
            backgroundColor: Colors.transparent,
            leadingWidth: MediaQuery.of(context).size.width,
            flexibleSpace:  FlexibleSpaceBar(
              title: const Text('SliverAppBar'),
              background: Image.asset("assets/images/bgd.jpg")
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const CustomCard();
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            children: const <Widget>[
            ],
          ),
        ),
      ),
    );
  }
}
