import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/slivers/sliver_header_delegate.dart';
import '../common/slivers/sliver_title_bar.dart';

class DiaryScreen extends ConsumerStatefulWidget {
  const DiaryScreen({super.key});

  @override
  ConsumerState<DiaryScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends ConsumerState<DiaryScreen> {
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
          SliverTitleBar(data: "Diary"),
          SliverToBoxAdapter(child: Gap(10)),
          SliverGrid(
            gridDelegate: landscapeWindow
                ? paintLandscapeQuiltedGridDelegate()
                : paintPortraitQuiltedGridDelegate(),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(color: Colors.red),
              childCount: 5,
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
      pattern: [QuiltedGridTile(32, 32), QuiltedGridTile(32, 32)],
    );
  }

  SliverQuiltedGridDelegate paintLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [QuiltedGridTile(16, 16), QuiltedGridTile(16, 16)],
    );
  }
}
