import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('会员中心')),
      body:ListView(
        children: <Widget>[
          _topHeader(),
        ],
      )
    );
  }

  Widget _topHeader() {

    return Container(
      width: ScreenUtil().setWidth(750),
      color: Colors.pinkAccent,
      child: Column(
        children: <Widget>[
          Container(
            width:ScreenUtil().setWidth(150) ,
            height: ScreenUtil().setHeight(150),
            margin: EdgeInsets.only(top: 30),
            child: ClipOval(
              child: Image.network(
                  'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1781008062,2853651286&fm=11&gp=0.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Text('****',
                style: TextStyle(
                fontSize: ScreenUtil().setSp(36),
                color: Colors.black54,
                ),
            ),
          )
        ],
      ),
    );
  }
}
