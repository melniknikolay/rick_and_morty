import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';

abstract class PersonState extends Equatable {
  const PersonState();

  @override
  List<Object?> get props => [];
}

class PersonEmpty extends PersonState {
  @override
  List<Object?> get props => [];
}

class PersonLoading extends PersonState {
  final List<PersonEntity> oldPersonList;
  final bool isFirtsFetch;

  PersonLoading(this.oldPersonList, {this.isFirtsFetch = false});

  @override
  List<Object?> get props => [oldPersonList];
}

class PersonLoaded extends PersonState {
  final List<PersonEntity> personsList;

  PersonLoaded(this.personsList);

  @override
  List<Object?> get props => [personsList];
}

class PersonError extends PersonState {
  final String message;

  PersonError({required this.message});

  @override
  List<Object?> get props => [message];
}
