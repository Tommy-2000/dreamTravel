import 'package:dreamtravel/ui/common/cards/adventure_card.dart';
import 'package:dreamtravel/ui/common/cards/social_card.dart';
import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/slivers/sliver_header_delegate.dart';
import '../common/slivers/travel_bar.dart';

class HubScreen extends ConsumerStatefulWidget {
  const HubScreen({super.key});

  @override
  ConsumerState<HubScreen> createState() => _HubScreenState();
}

class _HubScreenState extends ConsumerState<HubScreen> {
  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        TravelBar(appBarTitle: "Hub"),
        SliverGrid(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 32,
            pattern: [
              if (landscapeWindow)
                QuiltedGridTile(32, 32)
              else
                QuiltedGridTile(32, 32),
              if (landscapeWindow)
                QuiltedGridTile(32, 32)
              else
                QuiltedGridTile(32, 32),
            ],
          ),
          delegate: SliverChildListDelegate([
            SocialCard(
              contentMessage:
                  "I had an INCREDIBLE trip in Hawaii with my brother and husband and saw dolphins by the...",
              contentUrl:
                  "https://images.unsplash.com/photo-1567416421547-5d627e718089?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=735",
              cardContentHeight: 110, cardContentWidth: 170,
            ),
            AdventureCard(
              cardMessage:
                  "Just had a wonderful time all throughout Japan and saw some BEAUTIFUL cherry blossoms (or sakura as they are called) and...",
              cardContentList: [
                "https://images.unsplash.com/photo-1601823984263-b87b59798b70?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
                "https://images.unsplash.com/photo-1524413840807-0c3cb6fa808d?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170",
                "https://images.unsplash.com/photo-1602273660127-a0000560a4c1?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=736",
                "https://images.unsplash.com/photo-1620635063663-fce9bd4a0b1c?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1073",
                "https://images.unsplash.com/photo-1698794503338-a61fc2d1929e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=627",
                "https://images.unsplash.com/photo-1760657061857-2dc900e0719e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687"
              ], cardContentHeight: 110, cardContentWidth: 170,
            ),
          ]),
        ),
      ],
    );
  }
}
