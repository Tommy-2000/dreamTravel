import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/state/campfire_event.dart';
import 'package:dreamtravel/state/campfire_state.dart';
import 'package:dreamtravel/ui/common/cards/campfire_adventure_card.dart';
import 'package:dreamtravel/ui/common/cards/campfire_trip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/slivers/sliver_root_appbar.dart';

class CampfireScreen extends ConsumerStatefulWidget
    with CampfireState, CampfireEvent {
  const CampfireScreen({super.key});

  @override
  ConsumerState<CampfireScreen> createState() => _CampfireScreenState();
}

class _CampfireScreenState extends ConsumerState<CampfireScreen> {
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
    // Listen in to state changes in the campfireDataList before rendering or rerendering any components
    final asyncCampfireDataList = widget.watchCampfireDataList(ref);

    return CustomScrollView(
      // Should improve rendering performance
      scrollCacheExtent: ScrollCacheExtent.viewport(100),
      slivers: <Widget>[
        SliverRootAppBar(
          sliverRootTitle: "Campfire",
          sliverRootFilterButtonToggled: false,
        ),
        SliverToBoxAdapter(child: Gap(10)),
        renderCampfireGrid(asyncCampfireDataList),
      ],
    );
  }

  RenderObjectWidget renderCampfireGrid(
    AsyncValue<List<CampfireData>> asyncCampfireDataList,
  ) {
    return switch (asyncCampfireDataList) {
      AsyncData(:final value) => SliverGrid(
        gridDelegate: landscapeWindow
            ? buildLandscapeQuiltedGridDelegate()
            : buildPortraitQuiltedGridDelegate(),
        delegate: renderSliverChildrenList(value),
      ),
      AsyncLoading() => SliverToBoxAdapter(
        child: const Center(child: CircularProgressIndicator()),
      ),
      AsyncError() => SliverToBoxAdapter(
        child: Card(
          child: Column(
            children: [
              Text(
                "Error rendering campfire data, see StackTrace below",
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("${StackTrace.current}"),
            ],
          ),
        ),
      ),
    };
  }

  SliverChildBuilderDelegate renderSliverChildrenList(
    List<CampfireData> campfireDataList,
  ) {
    return SliverChildBuilderDelegate(
        (context, index) {
          if (index >= campfireDataList.length) {
            return null;
          }
          if (campfireDataList[index].campfirePostAttachedImages <= 1) {
            return CampfireTripCard(
              cardBody:
              campfireDataList[index].campfireBody,
              cardImage: campfireDataList[index].campfirePostAttachedImages!
                  .first,
              cardContentHeight: 110,
              cardContentWidth: 160,
            );
          } else {
            return CampfireAdventureCard(cardBody: campfireDataList[index].campfireBody, cardImageList: campfireDataList[index].campfirePostAttachedImages, cardContentHeight: cardContentHeight, cardContentWidth: cardContentWidth)
          }
        }[

      CampfireTripCard(
        cardBody:
            "I had an INCREDIBLE trip in Hawaii with my brother and husband and saw dolphins by the...",
        cardImages:
            "https://images.unsplash.com/photo-1567416421547-5d627e718089?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=735",
        cardContentHeight: 110,
        cardContentWidth: 160,
      ),
      CampfireAdventureCard(
        cardBody:
            "Just had a wonderful time all throughout Japan and saw some BEAUTIFUL cherry blossoms (or sakura as they are called) and...",
        cardImageList: [
          "https://images.unsplash.com/photo-1601823984263-b87b59798b70?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
          "https://images.unsplash.com/photo-1524413840807-0c3cb6fa808d?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170",
          "https://images.unsplash.com/photo-1602273660127-a0000560a4c1?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=736",
          "https://images.unsplash.com/photo-1620635063663-fce9bd4a0b1c?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1073",
          "https://images.unsplash.com/photo-1698794503338-a61fc2d1929e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=627",
          "https://images.unsplash.com/photo-1760657061857-2dc900e0719e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
        ],
        cardContentHeight: 168,
        cardContentWidth: 161,
      ),
      CampfireAdventureCard(
        cardBody:
            "Just had a wonderful time all throughout Japan and saw some BEAUTIFUL cherry blossoms (or sakura as they are called) and...",
        cardImageList: [
          "https://images.unsplash.com/photo-1601823984263-b87b59798b70?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
          "https://images.unsplash.com/photo-1524413840807-0c3cb6fa808d?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170",
          "https://images.unsplash.com/photo-1602273660127-a0000560a4c1?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=736",
          "https://images.unsplash.com/photo-1620635063663-fce9bd4a0b1c?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1073",
          "https://images.unsplash.com/photo-1698794503338-a61fc2d1929e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=627",
          "https://images.unsplash.com/photo-1760657061857-2dc900e0719e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
        ],
        cardContentHeight: 168,
        cardContentWidth: 161,
      ),
    ]);
  }

  SliverQuiltedGridDelegate buildPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(30, 16),
        QuiltedGridTile(30, 16),
        QuiltedGridTile(45, 32),
        QuiltedGridTile(45, 32),
      ],
    );
  }

  SliverQuiltedGridDelegate buildLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(16, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(16, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(16, 8),
        QuiltedGridTile(16, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
      ],
    );
  }
}
