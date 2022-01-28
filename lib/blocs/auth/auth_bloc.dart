import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:usa_in_ua/models/auth/domain/auth_failure.dart';
import 'package:usa_in_ua/models/auth/domain/i_auth_facade.dart';
import 'package:usa_in_ua/models/auth/domain/value_objects.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<PhoneNumberChanged>(
      (event, emit) async {
        emit(
          state.copyWith(
            phoneNumber: PhoneNumber(event.phoneNumber),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<PasswordChanged>(
      (event, emit) async {
        emit(
          state.copyWith(
            password: Password(event.password),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<RegisterWithPhoneNumberPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit>? failureOrSuccess;

        if (state.phoneNumber.isValid()) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess = await _authFacade.registerWithPhoneNumber(
            phoneNumber: state.phoneNumber,
          );

          emit(
            state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ),
          );
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
    on<SignInWithPhoneNumberAndPasswordPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit>? failureOrSuccess;

        if (state.phoneNumber.isValid()) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess = await _authFacade.signInWithPhoneNumberAndPassword(
            phoneNumber: state.phoneNumber,
            password: state.password,
          );

          emit(
            state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ),
          );
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
    on<SignInWithGooglePressed>(
      (event, emit) async {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        emit(
          state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess),
          ),
        );
      },
    );
  }

  // Stream<AuthState> mapEventToState(
  //   AuthEvent event,
  // ) async* {
  //   yield* event.map(
  //     phoneNumberChanged: (e) async* {
  //       yield state.copyWith(
  //         phoneNumber: PhoneNumber(e.phoneNumber),
  //         authFailureOrSuccessOption: none(),
  //       );
  //     },
  //     passwordChanged: (e) async* {
  //       yield state.copyWith(
  //         phoneNumber: PhoneNumber(e.password),
  //         authFailureOrSuccessOption: none(),
  //       );
  //     },
  //     registerWithPhoneNumberPressed: (e) async* {
  //       Either<AuthFailure, Unit>? failureOrSuccess;

  //       if (state.phoneNumber.isValid()) {
  //         yield state.copyWith(
  //           isSubmitting: true,
  //           authFailureOrSuccessOption: none(),
  //         );
  //         failureOrSuccess = await _authFacade.registerWithPhoneNumber(
  //           phoneNumber: state.phoneNumber,
  //         );

  //         yield state.copyWith(
  //           isSubmitting: false,
  //           authFailureOrSuccessOption: some(failureOrSuccess),
  //         );
  //       }

  //       yield state.copyWith(
  //         isSubmitting: false,
  //         showErrorMessages: true,
  //         authFailureOrSuccessOption: optionOf(failureOrSuccess),
  //       );

  //       // yield* _performActionOnAuthFacade(
  //       //   _authFacade.registerWithPhoneNumber(
  //       //     phoneNumber: state.phoneNumber,
  //       //   ),
  //       //   state.phoneNumber.isValid(),
  //       // );
  //     },
  //     signInWithPhoneNumberAndPasswordPressed: (e) async* {
  //       Either<AuthFailure, Unit>? failureOrSuccess;

  //       if (state.phoneNumber.isValid() && state.password.isValid()) {
  //         yield state.copyWith(
  //           isSubmitting: true,
  //           authFailureOrSuccessOption: none(),
  //         );
  //         failureOrSuccess = await _authFacade.signInWithPhoneNumberAndPassword(
  //           phoneNumber: state.phoneNumber,
  //           password: state.password,
  //         );

  //         yield state.copyWith(
  //           isSubmitting: false,
  //           authFailureOrSuccessOption: some(failureOrSuccess),
  //         );
  //       }

  //       yield state.copyWith(
  //         isSubmitting: false,
  //         showErrorMessages: true,
  //         authFailureOrSuccessOption: optionOf(failureOrSuccess),
  //       );

  //       // yield* _performActionOnAuthFacade(
  //       //   _authFacade.signInWithEmailAndPassword(
  //       //     phoneNumber: state.phoneNumber,
  //       //     password: state.password,
  //       //   ),
  //       //   (state.phoneNumber.isValid() && state.password.isValid()),
  //       // );
  //     },
  //     signInWithGooglePressed: (e) async* {
  //       yield state.copyWith(
  //         isSubmitting: true,
  //         authFailureOrSuccessOption: none(),
  //       );
  //       final failureOrSuccess = await _authFacade.signInWithGoogle();
  //       yield state.copyWith(
  //         isSubmitting: false,
  //         authFailureOrSuccessOption: some(failureOrSuccess),
  //       );
  //     },
  //   );
  // }

  // Stream<AuthState> _performActionOnAuthFacade(
  //   Future<Either<AuthFailure, Unit>?> forwaredCall,
  //   bool isValid,
  // ) async* {
  //   Either<AuthFailure, Unit>? failureOrSuccess;

  //   if (isValid) {
  //     yield state.copyWith(
  //       isSubmitting: true,
  //       authFailureOrSuccessOption: none(),
  //     );
  //     failureOrSuccess = await forwaredCall;

  //     yield state.copyWith(
  //       isSubmitting: false,
  //       authFailureOrSuccessOption: some(failureOrSuccess!),
  //     );
  //   }

  //   yield state.copyWith(
  //     isSubmitting: false,
  //     showErrorMessages: true,
  //     authFailureOrSuccessOption: optionOf(failureOrSuccess),
  //   );
  // }
}
