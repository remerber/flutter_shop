import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/provide/cart.dart';
import '../../model/cartInfo.dart';
import 'cart_count.dart';
import 'package:provide/provide.dart';

class CartItem extends StatelessWidget {
  final CartInfoModel item;

  CartItem(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: Row(
        children: <Widget>[
          _cartCheckBt(context,item),
          _cartImage(),
          _cartGoodsName(),
          _cartPrice(context),
        ],
      ),
    );
  }
  // 多选按钮
 Widget _cartCheckBt(context,item) {
    return Container(
      child: Checkbox(
          value: item.isCheck,
          activeColor: Colors.pink,
          onChanged: (bool val){}),

    );
 }
  // 商品图片
 Widget _cartImage() {
    return Container(
      width: ScreenUtil().setWidth(150),
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black12
        )
      ),
      child: Image.network(item.images),
    );
 }

  // 商品名称
  Widget _cartGoodsName() {
    return Container(
      width: ScreenUtil().setWidth(300),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(item.goodsName),
          CartCount()
        ],
      ),
    );
  }
  //价格
  Widget _cartPrice(context) {
    return Container(
      width: ScreenUtil().setWidth(150),
      child: Column(
        children: <Widget>[
          Text('¥${item.price}'),
          Container(
            child: InkWell(
              onTap: (){
                Provide.value<CartProvide>(context).deleteOneGoods(item.goodsId);
              },
              child: Icon(
                Icons.delete,
                color: Colors.black26,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
