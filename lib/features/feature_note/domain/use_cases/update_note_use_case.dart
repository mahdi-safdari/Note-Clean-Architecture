import 'package:notes_c/core/resources/data_state.dart';
import 'package:notes_c/core/use_case/use_case.dart';
import 'package:notes_c/features/feature_note/data/models/note_model.dart';
import 'package:notes_c/features/feature_note/domain/repository/note_repository.dart';

class UpdateNoteUseCase implements UseCase<DataState<int>, Note> {
  NoteRepository noteRepository;
  UpdateNoteUseCase(this.noteRepository);

  @override
  Future<DataState<int>> call(Note value) {
    return noteRepository.updateNote(value);
  }
}
