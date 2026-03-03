import 'package:dreamtravel/logic/api/models/search/sample_location_list.dart';
import 'package:dreamtravel/logic/navigation/nav_branch.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TravelSearchBar extends StatefulWidget {
  const TravelSearchBar({super.key});

  @override
  State<TravelSearchBar> createState() => _TravelSearchBarState();
}

class _TravelSearchBarState extends State<TravelSearchBar> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          leading: Icon(FluentIcons.search_12_regular),
          hintText: "Where will you travel next?",
          onTap: () => {
            controller.openView()
          },
        );
      },
      suggestionsBuilder:
          (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int listIndex) {
              final String suggestedItem =
                  sampleLocationList[listIndex].locationCity;
              return ListTile(
                title: Text(suggestedItem),
                onTap: () {
                  setState(() {
                    controller.closeView(suggestedItem);
                  });
                },
              );
            });
          },
      isFullScreen: true,
    );
  }
}
