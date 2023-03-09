import 'package:flutter/material.dart';
import 'package:flutter_navigateback_contentscroll_issue/widgets/followed_by.dart';
import 'package:flutter_navigateback_contentscroll_issue/widgets/followed_to.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          iconTheme: IconThemeData(
            color: Theme.of(context).textTheme.bodyLarge!.color,
          ),
          foregroundColor: Theme.of(context).textTheme.bodyLarge!.color,
          centerTitle: false,
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            labelColor: Theme.of(context).textTheme.bodyLarge!.color,
            tabs: const [
              Tab(text: 'following'),
              Tab(text: 'followed by'),
            ],
          ),
          title: const Text('friends'),
        ),
        body: const TabBarView(
          children: [
            FollowedTo(),
            FollowedBy(),
          ],
        ),
      ),
    );
  }
}
