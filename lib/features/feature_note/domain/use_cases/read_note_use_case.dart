import 'package:notes_c/core/resources/data_state.dart';
import 'package:notes_c/core/use_case/use_case.dart';
import 'package:notes_c/features/feature_note/data/models/note_model.dart';
import 'package:notes_c/features/feature_note/domain/repository/note_repository.dart';

class ReadNoteUseCase implements UseCase<DataState<Note>, int> {
  NoteRepository noteRepository;
  ReadNoteUseCase(this.noteRepository);

  @override
  Future<DataState<Note>> call(int value) {
    return noteRepository.readNote(value);
  }
}
