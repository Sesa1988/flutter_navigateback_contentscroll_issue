import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class PeopleCollection extends StatelessWidget {
  const PeopleCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        var completer = Completer<void>()..complete();
        return completer.future;
      },
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
        }),
        child: ListView.separated(
          shrinkWrap: false,
          controller: ScrollController(),
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: 20,
          separatorBuilder: (context, index) => const Divider(height: 1),
          itemBuilder: (context, index) {
            return ListTile(title: Text(index.toString()));
          },
        ),
      ),
    );
  }
}
