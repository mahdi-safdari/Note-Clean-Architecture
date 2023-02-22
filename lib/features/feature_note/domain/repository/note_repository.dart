import 'package:notes_c/features/feature_note/data/models/note_model.dart';

import '../../../../core/resources/data_state.dart';

abstract class NoteRepository {
  Future<DataState<Note>> readNote(int? id);
  Future<DataState<List<Note>>> readAllNote();
  Future<DataState<int>> updateNote(Note note);
  Future<DataState<int>> deleteNote(int? id);
}
