import 'package:flutter/material.dart';
import 'package:marvel_app/common/interface/marvel_loading.dart';
import 'package:marvel_app/hero/domain/models/item_model.dart';
import 'package:marvel_app/hero/interface/widgets/items_card.dart';

class DetailTab extends StatelessWidget {
  const DetailTab({
    super.key,
    required this.itemList,
  });
  final List? itemList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: itemList == null
          ? MarvelLoading()
          : itemList!.isEmpty
              ? Text('Error')
              : ListView.builder(
                  itemCount: itemList!.length,
                  itemBuilder: (context, index) {
                    ItemModel comic = itemList![index];
                    return ItemsCard(title: comic.title);
                  },
                ),
    );
  }
}
