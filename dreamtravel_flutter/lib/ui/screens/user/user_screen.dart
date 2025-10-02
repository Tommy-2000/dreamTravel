import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/cards/image_card.dart';
import '../../common/grid/adaptive_quilted_grid_tiles.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 600 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 900;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            expandedHeight: 60,
            floating: true,
            snap: true,
            stretch: true,
            backgroundColor: Colors.lightBlue,
            title: Text(
                "User"
            ),
            titleTextStyle: GoogleFonts.montserrat(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            leading: IconButton(
              onPressed: () => {},
              icon: Icon(Icons.search_rounded, color: Colors.white,),
            ),
            automaticallyImplyLeading: true,
          ),
          SliverGrid(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 8,
              pattern: [
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(2)
                else
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(4),
              ],
            ),
            delegate: SliverChildBuilderDelegate((context, index) => ImageCard(
              contentTitle: "ijoewifw",
              contentSubtitle: "fwefwef",
              contentImageUrl: "fwewfef",
            ), childCount: 1),
          ),
        ],
      ),
    );
  }
}
