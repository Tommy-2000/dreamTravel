import 'dart:async';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../logic/models/examples/sample_travel_data_list.dart';
import '../buttons/filter_travel_button.dart';

class SliverRootAppBar extends StatefulWidget {
  const SliverRootAppBar({
    super.key,
    required this.sliverRootTitle,
    required this.sliverRootFilterButtonToggled,
    this.sliverRootWidgetSpace,
  });

  final String sliverRootTitle;
  final bool sliverRootFilterButtonToggled;
  final Widget? sliverRootWidgetSpace;

  @override
  State<SliverRootAppBar> createState() => _SliverRootAppBarState();
}

class _SliverRootAppBarState extends State<SliverRootAppBar> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return SliverAppBar.large(
      centerTitle: true,
      expandedHeight: 200,
      floating: true,
      snap: true,
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(35)),
      backgroundColor: colourScheme.primaryContainer,
      title: Text(widget.sliverRootTitle),
      titleTextStyle: GoogleFonts.montserrat(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: colourScheme.primary,
      ),
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
                  return SearchBar(
                    leading: Icon(FluentIcons.search_12_regular),
                    hintText: "Where will you travel next?",
                    onTap: () => {controller.openView()},
                  );
                },
                suggestionsBuilder: renderSearchSuggestions,
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10.0,
                children: [
                  FilterTravelButton(
                    text: 'Flights',
                    icon: FluentIcons.airplane_24_regular,
                    selectedIcon: FluentIcons.airplane_32_filled,
                    isButtonToggled: widget.sliverRootFilterButtonToggled,
                  ),
                  FilterTravelButton(
                    text: 'Hotels',
                    icon: FluentIcons.bed_24_regular,
                    selectedIcon: FluentIcons.bed_24_filled,
                    isButtonToggled: widget.sliverRootFilterButtonToggled,
                  ),
                  FilterTravelButton(
                    text: 'Travel Experiences',
                    icon: FluentIcons.beach_24_regular,
                    selectedIcon: FluentIcons.beach_24_filled,
                    isButtonToggled: widget.sliverRootFilterButtonToggled,
                  ),
                ],
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }

  FutureOr<Iterable<Widget>> renderSearchSuggestions(
    BuildContext context,
    SearchController controller,
  ) {
    return List<ListTile>.generate(5, (int listIndex) {
      final String suggestedItem = sampleTravelDataList[listIndex].travelCity;
      return ListTile(
        title: Text(suggestedItem),
        onTap: () {
          setState(() {
            controller.closeView(suggestedItem);
          });
        },
      );
    });
  }
}
