import 'package:flutter/material.dart';
import 'package:flutter_shop/provide/details_info.dart';
import 'package:provide/provide.dart';

import 'details_page/detail_top_area.dart';
import 'details_page/details_explain.dart';
import 'details_page/details_tabbar.dart';
import 'details_page/details_web.dart';
class DetailsPage extends StatelessWidget {

  final String goodsId;

  const DetailsPage({Key key, this.goodsId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _getBackInfo(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            }),
        title: Text('商品详细页'),
      ),
      body: FutureBuilder(
          future: _getBackInfo(context),
          builder: (context,snapshot){
            if (snapshot.hasData) {
              return Container(
                child: ListView(
                  children: <Widget>[
                    DetailsTopArea(),
                    DetailsExplain(),
                    DetailsTabbar(),
                    DetailsWeb()
                  ],
                ),
              );
            } else {
              return Text('加载中.....');
            }

          })
    );
  }
  Future _getBackInfo (BuildContext context) async{
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(goodsId);
    return '加载完成';
  }
}
