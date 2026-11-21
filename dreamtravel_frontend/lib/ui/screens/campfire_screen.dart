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

import '../common/responsive_render.dart';
import '../common/slivers/sliver_root_appbar.dart';

class CampfireScreen extends ConsumerStatefulWidget
    with CampfireState, CampfireEvent {
  const CampfireScreen({super.key});

  @override
  ConsumerState<CampfireScreen> createState() => _CampfireScreenState();
}

class _CampfireScreenState extends ConsumerState<CampfireScreen> {
  late ResponsiveRender _responsiveRender;
  late ScrollController _campfireScrollController;

  RenderObjectWidget renderCampfireGrid(
    AsyncValue<List<CampfireData>> asyncCampfireDataList,
  ) {
    switch (asyncCampfireDataList) {
      case AsyncData(:final value):
        return SliverGrid(
          gridDelegate:
              _responsiveRender.screenIsExtraLarge &&
                  _responsiveRender.screenIsLarge &&
                  _responsiveRender.screenIsMedium
              ? buildLandscapeQuiltedGridDelegate()
              : buildPortraitQuiltedGridDelegate(),
          delegate: renderSliverChildrenList(value),
        );
      case AsyncLoading():
        return SliverToBoxAdapter(
          child: const Center(child: CircularProgressIndicator()),
        );
      case AsyncError():
        return renderDebugErrorCard();
    }
  }

  SliverChildBuilderDelegate renderSliverChildrenList(
    List<CampfireData> campfireDataList,
  ) {
    return SliverChildBuilderDelegate((context, index) {
      if (index >= campfireDataList.length) {
        return null;
      }
      if (campfireDataList[index].campfirePostImages == null) {
        return null;
        } else if (campfireDataList[index].campfirePostImages!.length > 1) {
        return renderCampfireAdventureCard(campfireDataList, index);
      } else {
        return renderCampfireTripCard(campfireDataList, index);
      }
    });
  }

  CampfireAdventureCard renderCampfireAdventureCard(
    List<CampfireData> campfireDataList,
    int index,
  ) {
    return CampfireAdventureCard(
      cardBody: campfireDataList[index].campfireBody,
      cardImageList: campfireDataList[index].campfirePostImages ?? [],
      cardContentHeight: _responsiveRender.screenIsExtraSmall ? 100 : 50,
      cardContentWidth: _responsiveRender.screenIsExtraSmall ? 150 : 100,
    );
  }

  CampfireTripCard renderCampfireTripCard(
    List<CampfireData> campfireDataList,
    int index,
  ) {
    return CampfireTripCard(
      cardBody: campfireDataList[index].campfireBody,
      cardImage:
          campfireDataList[index].campfirePostImages?.first ?? Uri.parse('uri'),
      cardContentHeight: 110,
      cardContentWidth: 160,
    );
  }

  RenderObjectWidget renderDebugErrorCard() {
    return SliverToBoxAdapter(
      child: Card(child: Column(children: [Text("${StackTrace.current}")])),
    );
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

  @override
  void initState() {
    super.initState();
    _campfireScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _campfireScrollController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ResponsiveRender notifies this screen if any responsive screen changes are detected
    _responsiveRender = ResponsiveRender(context);
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
}
