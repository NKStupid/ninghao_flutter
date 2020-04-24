import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

class ViewDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) => Container(
      color: Colors.grey[300],
      alignment: Alignment.center,
      child: Text(
        'Item $index',
        style: TextStyle(
            fontSize: 18,
            color: Colors.grey
        ),
      ),
    ));
  }


  @override
    Widget build(BuildContext context) {
      return GridView.builder(
        itemCount: posts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 32.0
          ),
          itemBuilder: (BuildContext context, int index) => Container(
            child: Image.network(posts[index].imageUrl, fit: BoxFit.cover)
          )
      );
    }


  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
        ),
        Positioned(bottom: 8, left: 8, child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              posts[index].title,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              posts[index].author,
              style: TextStyle(
//                fontWeight: FontWeight.bold
              ),
            )

          ],
        ),)
      ],
    );
  }


  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
    );
  }

}