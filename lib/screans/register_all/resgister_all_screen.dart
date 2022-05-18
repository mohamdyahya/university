import 'package:flutter/material.dart';
import '../../components/custom_surfix_icon.dart';
import '../../constants.dart';
import '../../size_config.dart';
import '../register/res.dart';
import '../reservationinformation/information.dart';

class AllRegister extends StatefulWidget {
  @override
  _AllRegisterState createState() => _AllRegisterState();
}

class _AllRegisterState extends State<AllRegister>

    with SingleTickerProviderStateMixin {
   TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kTextWhite,
      appBar: AppBar(
        toolbarHeight: getProportionateScreenHeight(80),
        centerTitle: true,
        title:Text("المواصلات",style: TextStyle(color: kTextColor),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height:  SizeConfig.screenHeight*0.75,
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(24)),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: kTextColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: kTextWhite,
                          labelColor: kTextWhite,
                          indicatorColor: kTextWhite,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: kTextGray2,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: 'الأسعار والأوقات',
                            ),
                            Tab(
                              text: 'تسجيل على رحلة',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Reservation_infrmation_page(),
                      Reservation(),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}