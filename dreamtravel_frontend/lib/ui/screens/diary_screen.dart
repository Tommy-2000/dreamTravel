import 'package:dreamtravel/ui/common/cards/monthly_calendar_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../common/slivers/sliver_root_appbar.dart';


class DiaryScreen extends ConsumerStatefulWidget {
  const DiaryScreen({super.key});

  @override
  ConsumerState<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends ConsumerState<DiaryScreen> {
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
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverRootAppBar(sliverRootTitle: "Diary", sliverRootFilterButtonToggled: false),
          SliverToBoxAdapter(child: Gap(10)),
          renderDiaryGrid(),
        ],
      ),
    );
  }

  SliverGrid renderDiaryGrid() {
    return SliverGrid(
      gridDelegate: landscapeWindow
          ? paintLandscapeQuiltedGridDelegate()
          : paintPortraitQuiltedGridDelegate(),
      delegate: SliverChildListDelegate([
        MonthlyCalendarCard(),
      ]),
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [QuiltedGridTile(48, 32)],
    );
  }

  SliverQuiltedGridDelegate paintLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [QuiltedGridTile(16, 32)],
    );
  }
}
