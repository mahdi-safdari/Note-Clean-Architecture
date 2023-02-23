import 'package:notes_c/features/feature_note/data/data_source/local/note_database.dart';
import 'package:notes_c/features/feature_note/data/models/note_model.dart';
import 'package:notes_c/core/resources/data_state.dart';
import 'package:notes_c/features/feature_note/domain/repository/note_repository.dart';

class NoteRepositoryImpl extends NoteRepository {
  final NotesDatabase notesDatabase;
  NoteRepositoryImpl(this.notesDatabase);
  @override
  Future<DataState<Note>> readNote(int? id) async {
    try {
      Note note = await notesDatabase.readNote(id);
      return DataSuccess(note);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<List<Note>>> readAllNote() async {
    try {
      List<Note> notes = await notesDatabase.readAllNote();
      return DataSuccess(notes);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<int>> updateNote(Note note) async {
    try {
      int update = await notesDatabase.updateNote(note);
      return DataSuccess(update);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<int>> deleteNote(int? id) async {
    try {
      await notesDatabase.deleteNote(id);
      return DataSuccess(id);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }
}
