import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../logic/api/models/sample_location_list.dart';

class BookingsSearchBar extends StatefulWidget {
  const BookingsSearchBar({super.key});

  @override
  State<BookingsSearchBar> createState() => _BookingsSearchBarState();
}

class _BookingsSearchBarState extends State<BookingsSearchBar> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          leading: Icon(FluentIcons.search_12_regular),
          hintText: "Search for bookings",
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
