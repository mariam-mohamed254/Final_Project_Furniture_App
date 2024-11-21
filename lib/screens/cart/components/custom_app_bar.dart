import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/cart/bloc/cart_cubit.dart';

AppBar builAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        onPressed: () {
          // Clear all products from the cart
          context.read<CartCubit>().clearCart();
        },
        icon: const Icon(Icons.delete),
      ),
    ],
  );
}
