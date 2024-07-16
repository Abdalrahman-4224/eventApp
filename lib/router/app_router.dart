import 'package:liverpod_structure/src/buying/choose%20payment%20method/choose_payment_method_screen.dart';
import 'package:liverpod_structure/src/buying/online%20payment/online_payment.dart';
import 'package:liverpod_structure/src/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:liverpod_structure/src/login/otp_screen.dart';
import 'package:liverpod_structure/src/profile/adding%20card/adding_card_screen.dart';
import 'package:liverpod_structure/src/profile/card%20information/card_information_screen.dart';
import 'package:liverpod_structure/src/profile/profile%20home%20page/profile_home_page.dart';
import 'package:liverpod_structure/src/profile/ticket%20archive/ticket_archive_screen.dart';
import 'package:liverpod_structure/src/search/google_map.dart';
import 'package:liverpod_structure/src/tickets/tickets_screen.dart';
import 'package:liverpod_structure/src/ticking%20and%20detail/ticket_detail.dart';
import '../src/buying/name.dart';
import '../src/buying/payment/payment.dart';

final Provider<GoRouter> routerProvider = Provider((ref) => router);

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: RoutesDocument.home,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: RoutesDocument.home,
      builder: (context, state) =>  const TicketsScreen(),
    ),

    //TODO change to HomePage() above;
    // ShellRoute(
    //   navigatorKey: _shellNavigatorKey,
    //   builder: (BuildContext context, Go,RouterState state, Widget child) {
    //     return PharmacyEntryPoint(child:'child);
    //   },
    //   routes: <RouteBase>[
    //     GoRoute(
    //       parentNavigatorKey: _shellNavigatorKey,
    //         path: RoutesDocument.pharmacyHome,
    //         builder: (context, state) => const PharmacyHomePage(),
    //         routes: [
    //           GoRoute(
    //             path: RoutesDocument().productDetails(':id'),
    //             builder: (context, state) => ProductDetailsPage(
    //               id: Uri.decodeComponent(state.pathParameters['id']!),
    //             ),
    //           ),
    //         ]),
    //     GoRoute(
    //       path: RoutesDocument.pharmacyOrders,
    //       builder: (context, state) => const PharmacyOrdersPage(),
    //       parentNavigatorKey: _shellNavigatorKey,
    //     ),
    //     GoRoute(
    //       path: RoutesDocument.pharmacyCart,
    //       builder: (context, state) => const PharmacyCartPage(),
    //       parentNavigatorKey: _shellNavigatorKey,
    //     ),
    //     GoRoute(
    //       path: RoutesDocument.pharmacyAccount,
    //       builder: (context, state) => const PharmacyAccountPage(),
    //       parentNavigatorKey: _shellNavigatorKey,
    //     ),
    //   ],
    // ),
  ],
);

class RoutesDocument {
  const RoutesDocument._();
  static const String home = '/';
  static const String login = '/login';

  // // Product
  // static String productDetails(String id) => 'product-details/$id';
}

  // final encodedItemId = getEncodedComponent(item.id);
  // context.push(
  //     "${RoutesDocument.pharmacyHome}/${RoutesDocument.productDetails(encodedItemId)}");
