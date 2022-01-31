import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/position/gf_position.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFCard(
      boxFit: BoxFit.cover,
      titlePosition: GFPosition.start,
      image: Image.asset(
        'assets/images/scn.jpg',
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      showImage: true,
      title: const GFListTile(
        avatar: GFAvatar(
          backgroundImage: AssetImage('assets/images/bgd.jpg'),
        ),
        titleText: 'Title',
        subTitleText: 'Sub Title',
      ),
      content: const Text("Some quick example text to build on the card"),
      buttonBar: const GFButtonBar(
        children: <Widget>[
          GFAvatar(
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          GFAvatar(
            backgroundColor: GFColors.DARK,
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          GFAvatar(
            backgroundColor: GFColors.DANGER,
            child: Icon(
              Icons.help,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
