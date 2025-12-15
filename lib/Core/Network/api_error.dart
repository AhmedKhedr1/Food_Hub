class ApiError {

final String Message;
final int? StatusCode;

  ApiError({required this.Message,this.StatusCode});

  @override
  String toString(){
    return 'error is:$Message (StatusCode is $StatusCode)';
  }
}