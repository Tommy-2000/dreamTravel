import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/state/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../state/user_state.dart';
import '../common/responsive_render.dart';
import '../common/slivers/sliver_root_appbar.dart';

class UserScreen extends ConsumerStatefulWidget with UserState, UserEvent {
  const UserScreen({super.key});

  @override
  ConsumerState<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends ConsumerState<UserScreen> {
  late ResponsiveRender _responsiveRender;
  late ScrollController _userScrollController;

  @override
  void initState() {
    super.initState();
    _userScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _userScrollController.dispose();
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
          sliverRootTitle: "User",
          sliverRootFilterButtonToggled: false,
        ),
        SliverGrid(
          gridDelegate:
              _responsiveRender.screenIsExtraLarge &&
                  _responsiveRender.screenIsLarge &&
                  _responsiveRender.screenIsMedium
              ? buildLandscapeQuiltedGridDelegate()
              : buildPortraitQuiltedGridDelegate(),
          delegate: SliverChildBuilderDelegate(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: true,
            (context, index) => Container(color: Colors.red),
            childCount: 1,
          ),
        ),
      ],
    );
  }

  SliverQuiltedGridDelegate buildPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(25, 32),
        QuiltedGridTile(25, 16),
        QuiltedGridTile(25, 16),
        QuiltedGridTile(25, 16),
        QuiltedGridTile(25, 16),
      ],
    );
  }

  SliverQuiltedGridDelegate buildLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
      ],
    );
  }
}
