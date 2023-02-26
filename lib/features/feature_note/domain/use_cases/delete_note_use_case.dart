import 'package:notes_c/core/resources/data_state.dart';
import 'package:notes_c/features/feature_note/domain/repository/note_repository.dart';

import '../../../../core/use_case/use_case.dart';

class DeleteNoteUseCase implements UseCase<DataState<int>, int> {
  NoteRepository noteRepository;
  DeleteNoteUseCase(this.noteRepository);

  @override
  Future<DataState<int>> call(int value) {
    return noteRepository.deleteNote(value);
  }
}
