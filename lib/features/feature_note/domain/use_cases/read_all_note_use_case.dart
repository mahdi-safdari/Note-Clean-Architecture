import 'package:notes_c/core/resources/data_state.dart';
import 'package:notes_c/core/use_case/use_case.dart';
import 'package:notes_c/features/feature_note/data/models/note_model.dart';

import '../repository/note_repository.dart';

class ReadAllNoteUseCase implements UseCase<DataState<List<Note>>, NoParams> {
  NoteRepository noteRepository;
  ReadAllNoteUseCase(this.noteRepository);
  @override
  Future<DataState<List<Note>>> call(NoParams value) {
    return noteRepository.readAllNote();
  }
}
