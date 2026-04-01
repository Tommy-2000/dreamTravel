import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../../logic/api/models/sample_location_list.dart';
import '../common/buttons/filter_travel_button.dart';
import '../common/cards/trip_card.dart';
import '../common/slivers/sliver_title_bar.dart';

class ExploreScreen extends ConsumerStatefulWidget {
  const ExploreScreen({super.key});

  @override
  ConsumerState<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends ConsumerState<ExploreScreen> {
  bool landscapeWindow = false;
  bool foldableWindow = false;

  bool filterButtonToggled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverTitleBar(data: "Go Explore!"),
          SliverToBoxAdapter(child: Gap(10)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TravelSearchBar(),
            ),
          ),
          SliverToBoxAdapter(child: Gap(10)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                spacing: 10.0,
                children: [
                  FilterTravelButton(text: 'Flights', icon: FluentIcons.airplane_24_regular, selectedIcon: FluentIcons.airplane_32_filled, isButtonToggled: filterButtonToggled),
                  FilterTravelButton(text: 'Hotels', icon: FluentIcons.bed_24_regular, selectedIcon: FluentIcons.bed_24_filled, isButtonToggled: filterButtonToggled),
                  FilterTravelButton(text: 'Travel Experiences', icon: FluentIcons.beach_24_regular, selectedIcon: FluentIcons.beach_24_filled, isButtonToggled: filterButtonToggled),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: Gap(10)),
          SliverGrid(
            gridDelegate: landscapeWindow
                ? paintLandscapeQuiltedGridDelegate()
                : paintPortraitQuiltedGridDelegate(),
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: false,
              (context, index) {
                if (index >= sampleLocationList.length) {
                  // Check the list length
                  return null;
                }
                return TripCard(
                  tripCity: sampleLocationList[index].locationCity,
                  tripCountry: sampleLocationList[index].locationCountry,
                  tripImageUrl: sampleLocationList[index].locationImageUrl,
                  tripTotalCost: sampleLocationList[index].locationTotalCost,
                  tripCardIsLandscape: landscapeWindow,
                  tripCardIsFavourite: false,
                );
              },
              childCount: sampleLocationList.length,
            ),
          ),
        ],
      ),
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
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


