import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
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
              title: const Text('Vlog app'),
              background: Image.asset("assets/images/bgd.jpg")
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  const [
                    GFAvatar(
                      backgroundColor: GFColors.DANGER,
                      child: Icon(
                        Icons.menu_open,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.DARK,
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.DANGER,
                      child: Icon(
                        Icons.facebook_outlined,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.DARK,
                      child: Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),

                    ),
                    GFAvatar(
                      backgroundColor: GFColors.DANGER,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.DARK,
                      child: Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
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
