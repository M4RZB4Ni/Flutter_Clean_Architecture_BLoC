import 'dart:io';

import 'package:flutter_clean_architecture_bloc/app/messages/printers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_exceptions.freezed.dart';


@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(final String message) =
      UnauthorizedRequest;

  const factory NetworkExceptions.socketIoError(final String message) =
      SocketIoError;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(final String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;
  const factory NetworkExceptions.badGateway() = BadGateWay;
  const factory NetworkExceptions.gatewayTimeout() = GatewayTimeout;
  const factory NetworkExceptions.networkAuthRequired() = NetworkAuthRequired;
  const factory NetworkExceptions.forbidden() = Forbidden;
  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(final String error) =
      DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static String getErrorMessage(
    final NetworkExceptions networkExceptions, {
    final bool showInLog = true,
  }) {
    var errorMessage = '';
    networkExceptions.when(
      notImplemented: () {
        errorMessage = 'Not Implemented';
      },
      requestCancelled: () {
        errorMessage = 'Request Cancelled';
      },
      internalServerError: () {
        errorMessage = 'Internal Server Error';
      },
      notFound: (final String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = 'Service unavailable';
      },
      methodNotAllowed: () {
        errorMessage = 'Method Allowed';
      },
      badRequest: () {
        errorMessage = 'Bad request';
      },
      unauthorizedRequest: (final String message) {
        errorMessage = message.isEmpty ? 'Unauthorized request' : message;
      },
      unexpectedError: () {
        errorMessage = 'Unexpected error occurred';
      },
      requestTimeout: () {
        errorMessage = 'Connection request timeout';
      },
      noInternetConnection: () {
        errorMessage = 'No internet connection';
      },
      conflict: () {
        errorMessage = 'Error due to a conflict';
      },
      sendTimeout: () {
        errorMessage = 'Send timeout in connection with API server';
      },
      unableToProcess: () {
        errorMessage = 'Unable to process the data';
      },
      defaultError: (final String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = 'Unexpected error occurred';
      },
      notAcceptable: () {
        errorMessage = 'Not acceptable';
      },
      socketIoError: (final String message) {
        errorMessage = 'Socket Connection Error';
      },
      networkAuthRequired: () {
        errorMessage = 'Unable to process the data';

      },
      badGateway: () {
        errorMessage = 'Bad Gateway';

      },
      forbidden: () {
        errorMessage = 'Forbidden access';

      },
      gatewayTimeout: () {
        errorMessage = 'Forbidden';

      },
    );

    return errorMessage;
  }

  factory NetworkExceptions.handleResponse(final int error) {
    switch (error) {
      case 400:
        return const NetworkExceptions.badRequest();

      case 401:
        return const NetworkExceptions.unauthorizedRequest(
            'Please Check Token');
      case 403:
        return const NetworkExceptions.forbidden();
      case 404:
        return const NetworkExceptions.notFound(
            'Route Not found, Check your address');
      case 405:
        return const NetworkExceptions.methodNotAllowed();
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 500:
        return const NetworkExceptions.internalServerError();
      case 501:
        return const NetworkExceptions.notImplemented();
      case 502:
        return const NetworkExceptions.badGateway();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      case 504:
        return const NetworkExceptions.gatewayTimeout();
      case 511:
        return const NetworkExceptions.networkAuthRequired();
      default:
        return const NetworkExceptions.unexpectedError();
      // return NetworkExceptions.defaultError(
      //   'Received invalid status code: $responseCode',
      // );
    }
  }

  factory NetworkExceptions.getException(final HttpException error) {
    NetworkExceptions? networkExceptions;
    realDebugPrint('low level error--> ${error.message}');
    // try {
    //
    //   if (error is OperationException) {
    //     if (error.graphqlErrors.isNotEmpty &&
    //         error.graphqlErrors[0].extensions!['code'].toString() == '401') {
    //       final message = error.graphqlErrors[0].message
    //           .replaceAll('GraphQL.ExecutionError: ', '');
    //       networkExceptions = NetworkExceptions.unauthorizedRequest(message);
    //     } else if (error.graphqlErrors.isNotEmpty &&
    //         error.graphqlErrors[0].message.isNotEmpty) {
    //       final message = error.graphqlErrors[0].message
    //           .replaceAll('GraphQL.ExecutionError: ', '');
    //       networkExceptions = NetworkExceptions.unauthorizedRequest(message);
    //     } else {
    //       final SocketException sockerErr =
    //           error.linkException!.originalException;
    //
    //       if (error.linkException != null) {
    //         if (error.linkException!.originalException != null &&
    //             sockerErr.osError!.message.isNotEmpty) {
    //           networkExceptions = NetworkExceptions.defaultError(
    //             sockerErr.osError!.message,
    //           );
    //         }
    //       }
    //     }
    //   }
    //   sentryReporter(error);
    return networkExceptions!;
    // } on FormatException catch (e) {
    //   realDebugPrint(e.toString());
    //
    //   return const NetworkExceptions.formatException();
    // } catch (_) {
    //   return const NetworkExceptions.unexpectedError();
    // }
  }
}
