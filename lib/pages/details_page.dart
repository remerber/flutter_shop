import 'package:flutter/material.dart';
import 'package:flutter_shop/provide/details_info.dart';
import 'package:provide/provide.dart';
class DetailsPage extends StatelessWidget {

  final String goodsId;

  const DetailsPage({Key key, this.goodsId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _getBackInfo(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
      ),
      body: Container(
        child:Center(
          child: Text('商品ID：${goodsId}'),
        ),
      ),
    );
  }
  void _getBackInfo (BuildContext context) async{
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(goodsId);
  }
}
