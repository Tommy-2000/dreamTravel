import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/state/explore_event.dart';
import 'package:dreamtravel/state/explore_state.dart';
import 'package:dreamtravel/ui/common/slivers/sliver_root_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_values.dart';
import '../common/cards/travel_card.dart';
import '../common/slivers/sliver_header_delegate.dart';

class ExploreScreen extends ConsumerStatefulWidget
    with ExploreState, ExploreEvent {
  const ExploreScreen({super.key});

  @override
  ConsumerState<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends ConsumerState<ExploreScreen> {
  bool landscapeWindow = false;
  bool foldableWindow = false;

  SliverPersistentHeader paintSliverHeader(String sliverHeaderText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverHeaderDelegate(
        minHeight: 50,
        maxHeight: 100,
        childWidget: Card(
          color: Colors.lightBlueAccent,
          shape: StadiumBorder(side: BorderSide.none),
          shadowColor: Colors.black,
          child: Center(
            child: Text(
              sliverHeaderText,
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  RenderObjectWidget renderExploreGrid(
    AsyncValue<List<TravelData>> asyncTravelDataList,
  ) {
    return switch (asyncTravelDataList) {
      AsyncData(:final value) => SliverGrid(
        gridDelegate: landscapeWindow
            ? paintLandscapeQuiltedGridDelegate() // If the device is landscape, switch the delegate method to render a landscape grid
            : paintPortraitQuiltedGridDelegate(),
        // Otherwise, render a portrait grid
        delegate: renderSliverChildrenBuilder(
          value,
        ), // Render the children components as Sliver widgets within the SliverGrid
      ),
      AsyncLoading() => SliverToBoxAdapter(
        child: const Center(child: CircularProgressIndicator()),
      ),
      AsyncError() => SliverToBoxAdapter(
        child: Card(
          child: Column(
            children: [
              Text(
                "Error rendering travel data, see StackTrace below",
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

  SliverChildBuilderDelegate renderSliverChildrenBuilder(
    List<TravelData> travelDataList,
  ) {
    return SliverChildBuilderDelegate(
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      (context, index) {
        if (index >= travelDataList.length) {
          // Check the list length before rendering anything
          return null;
        }
        return renderTravelCard(travelDataList, index);
      },
      childCount: travelDataList.length,
    );
  }

  Widget renderTravelCard(List<TravelData> travelDataList, int renderIndex) {
    return TravelCard(
      travelCity: travelDataList[renderIndex].travelCity,
      travelCountry: travelDataList[renderIndex].travelCountry,
      travelImageUrl:
          travelDataList[renderIndex].travelImageUrl ?? imageUrlNullAddress,
      travelTotalCost: travelDataList[renderIndex].travelTotalCost,
      appIsLandscape: landscapeWindow,
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      // 32 wide with various height sizes
      repeatPattern: QuiltedGridRepeatPattern.same,
      // The following pattern is repeated if there is more data than there are pattern tiles
      pattern: [
        QuiltedGridTile(45, 32),
        QuiltedGridTile(45, 16),
        QuiltedGridTile(30, 16),
        QuiltedGridTile(45, 16),
        QuiltedGridTile(30, 16),
      ],
    );
  }

  SliverQuiltedGridDelegate paintLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      // 32 wide with various height sizes
      repeatPattern: QuiltedGridRepeatPattern.same,
      // The following pattern is repeated if there is more data than there are pattern tiles
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

  @override
  Widget build(BuildContext context) {
    // Listen in to state changes in the travelDataList before rendering or rerendering any components
    final asyncTravelDataList = widget.watchTravelDataList(ref);

    // paintSliverHeader("Latest Adventures");

    return CustomScrollView(
      scrollCacheExtent: ScrollCacheExtent.viewport(100),
      // Should improve rendering performance
      slivers: <Widget>[
        SliverRootAppBar(
          sliverRootTitle: "Go Explore!",
          sliverRootFilterButtonToggled: false,
        ),
        SliverToBoxAdapter(child: Gap(20)),
        // SliverToBoxAdapter(child: ExploreCarouselCard()), // Render the carousel in a sliver widget
        // Pass the async list from the screen's state future provider prior to rendering the grid
        renderExploreGrid(asyncTravelDataList),
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
