import 'package:dotted_border/dotted_border.dart';
import 'package:dz_pay/core/utils/color_manager.dart';
import 'package:dz_pay/core/utils/strings_manager.dart';
import 'package:dz_pay/core/utils/value_manager.dart';
import 'package:dz_pay/layout/cubit/app_cubit.dart';
import 'package:dz_pay/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'cubit/app_state.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.grey.shade100,
            appBar: AppBar(
              toolbarHeight: 80,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Dash(
                      direction: Axis.vertical,
                      length: 45,
                      dashLength: 1,
                      dashColor: Colors.white.withOpacity(.4)),
                  const SizedBox(
                    width: 1,
                  ),
                  Dash(
                      direction: Axis.vertical,
                      length: 45,
                      dashLength: 1,
                      dashColor: Colors.white.withOpacity(.4)),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Icon(
                    Icons.home,
                    size: 35,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Dash(
                      direction: Axis.vertical,
                      length: 45,
                      dashLength: 1,
                      dashColor: Colors.white.withOpacity(.4)),
                  const SizedBox(
                    width: 1,
                  ),
                  Dash(
                      direction: Axis.vertical,
                      length: 45,
                      dashLength: 1,
                      dashColor: Colors.white.withOpacity(.4)),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        StringsManager.balance,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          defaultText(StringsManager.dzd, 16,
                              color: cubit.showMoney == true
                                  ? Colors.white
                                  : ColorManager.primary,
                              fontWeight: FontWeight.normal),
                          defaultText(" 0.00", 16,
                              color: cubit.showMoney == true
                                  ? Colors.white
                                  : ColorManager.primary,
                              fontWeight: FontWeight.normal),
                        ],
                      )
                    ],
                  )
                ],
              ),
              backgroundColor: ColorManager.primary,
              elevation: 0.0,
              leadingWidth: 30,
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  )),
              actions: [
                IconButton(
                    onPressed: () {
                      cubit.changeMoneyVisibility();
                    },
                    icon: Icon(
                      cubit.suffix,
                      color: Colors.white,
                    )),
              ],
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Container(
                height: 70,
                width: 300.0,
                decoration: BoxDecoration(
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 4.0,
                          offset: Offset(0.0, 0.75))
                    ],
                    color: const Color(0xFF2eb14b),
                    border: Border.all(
                      width: 1,
                      color: ColorManager.primary,
                    ),
                    borderRadius: BorderRadius.circular(25.0)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              Expanded(
                                  child: Text(
                                StringsManager.profile.toLowerCase(),
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ))
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              const Icon(
                                Icons.transfer_within_a_station,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              Expanded(
                                  child: Text(
                                StringsManager.mouvements.toLowerCase(),
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ))
                            ],
                          ),
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              Expanded(
                                  child: Text(
                                StringsManager.hub.toLowerCase(),
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                defaultText(
                  StringsManager.title,
                  20.0,
                ),
                const SizedBox(
                  height: AppSize.s12,
                ),
                GridView.count(
                  padding: const EdgeInsets.all(25.0),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 2,
                  childAspectRatio: 1 / .7,
                  children: List.generate(item.length, (index) => item[index]),
                ),
                const SizedBox(
                  height: 40.0,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> item = [
    GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage("assets/images/transfer.png"),
              ),
            ),
            const SizedBox(
              height: AppSize.s12,
            ),
            defaultText(StringsManager.recharge, 16.0),
          ],
        ),
      ),
    ),
    GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage("assets/images/transfer.png"),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            defaultText(StringsManager.payout, 16.0),
          ],
        ),
      ),
    ),
    GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage("assets/images/transfer.png"),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            defaultText(StringsManager.send, 16.0),
          ],
        ),
      ),
    ),
    GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage("assets/images/transfer.png"),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            defaultText(StringsManager.request, 16.0),
          ],
        ),
      ),
    ),
    GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage("assets/images/transfer.png"),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            defaultText(StringsManager.shoping, 16.0),
          ],
        ),
      ),
    ),
    GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage("assets/images/transfer.png"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            defaultText(StringsManager.pay, 16.0),
          ],
        ),
      ),
    ),
  ];
}
