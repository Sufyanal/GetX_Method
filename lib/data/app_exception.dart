class AppException implements Exception {
  
  final _message;
 
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequestTime extends AppException {
  RequestTime([String? message]) : super(message, 'Request Time Out');
}

class ServerException extends AppException {
  ServerException ([String?message]): super (message,'Internet Server error');
}

class InvalidUrlException extends AppException {
  InvalidUrlException([String? message]) : super(message, 'Internet Server error');
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, '');
}
