import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

customAppBar(BuildContext context, String? title) {
  var l10n = AppLocalizations.of(context)!;

  return AppBar(
    title: Text(title ?? l10n.shurts),
    automaticallyImplyLeading: false,
  );
}
