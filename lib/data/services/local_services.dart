import 'package:app/data/services/clients/callback.dart';
import 'package:app/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> fetchPage<T>(
  {
  int? pageKey,
  required PagingController<int, T> pagingController,
  required FuturePaginatedResponse<T> futureItems,
  String? pageSize,
  }
) async {
  try {
    final newItems = await futureItems;
    final items = newItems.data.result;
    final isLastPage = items.length < int.parse(pageSize ?? "25");
    
    if (isLastPage) {
      pagingController.appendLastPage(items);
    } else {
      final nextPageKey = pageKey ?? 0 + items.length;
      pagingController.appendPage(items, nextPageKey);
    }
  } catch (error) {
    pagingController.error = error;
  }
}

Future<void> launchNotNullUrlString(String? url, {VoidCallback? orElse}) async {
  if (url != null && (url.contains("https") || url.contains("http"))) {
    launchUrlString(url, mode: LaunchMode.externalApplication);
  } else {
    orElse?.call();
  }
}

Future<void> openCall(String phoneNumber) async {
  try {
    await launchUrlString("tel:$phoneNumber");
  } catch (_) {
    if (kDebugMode) print("error: tel:$phoneNumber");
  }
}

Future<void> openMail(String mail) async {
  try {
    await launchUrlString("mailto:$mail");
  } catch (_) {
    if (kDebugMode) print("error: mailto:$mail");
  }
}

Future<void> openSMSMessage(String phoneNumber, {String? message}) async {
  var uri = 'sms:$phoneNumber';
  if (message != null) uri += "?body=$message";
  if (await canLaunchUrlString(uri)) await launchUrlString(uri);
}

Future<CroppedFile?> cropImage(BuildContext context) async {
  final result = await ImagePicker().pickImage(source: ImageSource.gallery);

  final theme = Theme.of(context);
  return await ImageCropper().cropImage(
    sourcePath: result!.path,
    aspectRatioPresets: [
      CropAspectRatioPreset.original,
      CropAspectRatioPreset.square,
      CropAspectRatioPreset.ratio3x2,
      CropAspectRatioPreset.ratio4x3,
      CropAspectRatioPreset.ratio16x9
    ],
    uiSettings: [
      AndroidUiSettings(
        toolbarTitle: context.l10n.crop,
        statusBarColor: theme.colorScheme.primary,
        toolbarColor: theme.colorScheme.primary,
        cropGridColor: theme.colorScheme.outline,
        backgroundColor: theme.colorScheme.background,
        activeControlsWidgetColor: theme.colorScheme.primary,
        toolbarWidgetColor: theme.colorScheme.onPrimary,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
      IOSUiSettings(
        title: context.l10n.crop,
      )
    ],
  );
}

String splitMoney(double value) {
  return value.toStringAsFixed(0).splitMapJoin(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        onMatch: (m) => '${m[1]},',
      );
}

List<DateTime> getDates(DateTime fromDate, DateTime toDate) {
  List<DateTime> dateList = [];
  for (int i = 0; i <= toDate.difference(fromDate).inDays; i++) {
    dateList.add(fromDate.add(Duration(days: i)));
  }
  return dateList;
}

 double calculateProgress(double value, double end) {
    if(value == 0) return 0;

    final x = value * 100;
    return x / end;
  }

  int getMonthsDifference(DateTime startDate, DateTime endDate) {
    int months = (endDate.year - startDate.year) * 12 + endDate.month - startDate.month;
    
    // Check if there are any remaining days in the last month
    if (endDate.day >= startDate.day) {
      months += 1;
    }

    return months;
  }

/// FNV-1a 64bit hash algorithm optimized for Dart Strings
int fastHash(String string) {
  var hash = 0xcbf29ce484222325;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}

// String getImageFromYoutubeUrl(String url) {
//   String? id = YoutubePlayer.convertUrlToId(url);
//   if (id != null) {
//     return "https://img.youtube.com/vi/$id/0.jpg";
//   }
//   return "";
// }