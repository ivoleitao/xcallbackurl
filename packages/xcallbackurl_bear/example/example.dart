import 'package:xcallbackurl_bear/src/create_note.dart';
import 'package:xcallbackurl_bear/src/open_tag.dart';
import 'package:xcallbackurl_bear/xcallbackurl_bear.dart';

void main() {
  final action = OpenNote(
      xSuccess: OpenTag(name: 'work/scratchpad'),
      xError: CreateNote(
          title: 'Scratchpad 2000-01-01',
          tags: ['work/scratchpad'],
          xSuccess: OpenTag(name: 'work/scratchpad')),
      title: 'Scratchpad 2000-01-01');

  print(action.toString());
}
