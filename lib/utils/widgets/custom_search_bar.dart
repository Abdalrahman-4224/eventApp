import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liverpod_structure/common_lib.dart';
import '../../data/providers/search_provider.dart';
class CustomSearchBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQueryController = SearchController();

    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {

        return Container(
          width: 297,
          child: SearchBar(
            backgroundColor: WidgetStateProperty.all<Color>(Color(0xff170e28)), 
            controller: controller,
            padding: const WidgetStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0)),
            onTap: () {
              controller.openView();
            },
            onChanged: (value) {
              ref.read(searchQueryProvider.notifier).state = value;
              controller.openView();
            },
            leading: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle
              ),
              height: 24,
              width: 24,
              child: SvgPicture.asset(Assets.assetsIconsSearchNormal),
            )
          ),
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        final searchQuery = ref.watch(searchQueryProvider);
        // Replace the below list with your actual suggestions based on searchQuery
        final List<String> suggestions = List.generate(5, (index) => 'item $index');

        return List<ListTile>.generate(suggestions.length, (int index) {
          final String item = suggestions[index];
          return ListTile(
            title: Text(item),
            onTap: () {
              ref.read(searchQueryProvider.notifier).state = item;
              controller.closeView(item);
            },
          );
        });
      },
    );
  }
}