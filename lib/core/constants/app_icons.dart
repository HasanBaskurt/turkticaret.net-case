// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:turkticaret_net_case/global/models/app_icon_data.dart';

class AppIcons {
  static const String _ICONS_PATH = "assets/icons";

  static final AppIconData DISCONNECT = AppIconData(
    path: "$_ICONS_PATH/disconnect.svg",
  );

  static final AppIconData MAP = AppIconData(path: "$_ICONS_PATH/map.svg");

  static final AppIconData SETTING = AppIconData(
    path: "$_ICONS_PATH/setting.svg",
  );

  static final AppIconData UPLOAD = AppIconData(
    path: "$_ICONS_PATH/upload.svg",
  );
  static final AppIconData DOWNLOAD = AppIconData(
    path: "$_ICONS_PATH/download.svg",
  );

  // Flags
  static final AppIconData ITALY_FLAG = AppIconData(
    path: "$_ICONS_PATH/italy_flag.svg",
  );
  static final AppIconData GERMANY_FLAG = AppIconData(
    path: "$_ICONS_PATH/germany_flag.svg",
  );
  static final AppIconData NETHERLANDS_FLAG = AppIconData(
    path: "$_ICONS_PATH/netherlands_flag.svg",
  );
}
