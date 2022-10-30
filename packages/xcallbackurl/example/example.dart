import 'package:xcallbackurl/xcallbackurl.dart';

void main() {
  final callback = XCallback(
      scheme: 'bear',
      action: 'open-note',
      xSuccess: XCallback(
          scheme: 'bear',
          action: 'open-tag',
          parameters: {'name': 'work/scratchpad'}),
      xError: XCallback(
          scheme: 'bear',
          action: 'create',
          xSuccess: XCallback(
              scheme: 'bear',
              action: 'open-tag',
              parameters: {'name': 'work/scratchpad'}),
          parameters: {
            'title': 'Scratchpad 2000-01-01',
            'tags': 'work/scratchpad'
          }),
      parameters: {'title': 'Scratchpad 2000-01-01'});
  print(callback);
}
