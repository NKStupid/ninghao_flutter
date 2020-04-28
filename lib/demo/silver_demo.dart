import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

class SilverDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverSafeArea(
              sliver: buildSliverPadding(),
            )
          ],

        ),
      );
    }

  SliverPadding buildSliverPadding() {
    return SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: buildSliverGridDemo(),
          );
  }

  Widget buildSliverGridDemo() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.7
      ),
      delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          childCount: posts.length
      ),
    );
  }
}
