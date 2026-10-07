import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/state/diary_event.dart';
import 'package:dreamtravel/state/diary_state.dart';
import 'package:dreamtravel/ui/common/cards/monthly_calendar_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../common/responsive_render.dart';
import '../common/slivers/sliver_root_appbar.dart';

class DiaryScreen extends ConsumerStatefulWidget with DiaryState, DiaryEvent {
  const DiaryScreen({super.key});

  @override
  ConsumerState<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends ConsumerState<DiaryScreen> {
  late ResponsiveRender _responsiveRender;
  late ScrollController _diaryScrollController;

  @override
  void initState() {
    super.initState();
    _diaryScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _diaryScrollController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ResponsiveRender notifies this screen if any responsive screen changes are detected
    _responsiveRender = ResponsiveRender(context);
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return CustomScrollView(
      slivers: <Widget>[
        SliverRootAppBar(
          sliverRootTitle: "Diary",
          sliverRootFilterButtonToggled: false,
        ),
        SliverToBoxAdapter(child: Gap(10)),
        renderDiaryGrid(),
      ],
    );
  }

  SliverGrid renderDiaryGrid() {
    return SliverGrid(
      gridDelegate: _responsiveRender.screenIsExtraLarge &&
          _responsiveRender.screenIsLarge &&
          _responsiveRender.screenIsMedium
          ? paintLandscapeQuiltedGridDelegate()
          : paintPortraitQuiltedGridDelegate(),
      delegate: SliverChildListDelegate([MonthlyCalendarCard()]),
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
