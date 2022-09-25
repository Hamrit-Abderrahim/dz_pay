import 'package:dz_pay/core/utils/color_manager.dart';
import 'package:dz_pay/core/utils/strings_manager.dart';
import 'package:dz_pay/core/utils/value_manager.dart';
import 'package:dz_pay/layout/cubit/app_cubit.dart';
import 'package:dz_pay/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            appBar: AppBar(
              toolbarHeight: 80,
              title: Row(
                children: [
                  const Icon(Icons.home),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    children: [
                      const Text(StringsManager.balance),
                      if (cubit.showMoney == true)
                        Row(
                          children: const [
                            Text(StringsManager.dzd),
                            Text(" 0.00"),
                          ],
                        )
                    ],
                  )
                ],
              ),
              backgroundColor: ColorManager.primary,
              leading: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
              actions: [
                IconButton(
                    onPressed: () {
                      cubit.changeMoneyVisibility();
                    },
                    icon: Icon(cubit.suffix)),
              ],
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 70,
                width: 300.0,
                decoration: BoxDecoration(
                    color: const Color(0xFF2EB34A),
                    border:
                        Border.all(width: 1, color: const Color(0xFF00A652)),
                    borderRadius: BorderRadius.circular(25.0)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Expanded(
                              child: defaultText(StringsManager.profile, 12,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Icon(
                              Icons.transfer_within_a_station,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Expanded(
                              child: defaultText(StringsManager.mouvements, 12,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Expanded(
                                child: defaultText(StringsManager.hub, 12,
                                    color: Colors.white))
                          ],
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
                defaultText(StringsManager.title, 20.0),
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
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> item = [
    Padding(
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
    Padding(
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
    Padding(
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
    Padding(
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
    Padding(
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
    Padding(
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
  ];
}
