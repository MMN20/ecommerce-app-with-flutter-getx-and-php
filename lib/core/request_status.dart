enum RequestStatus {
  none,

  loading,

  // connected to the server and everything is ok
  success,

  // if a list of data is empty
  empty,

  // you don't have internet connection
  internetConnectionError,

  // you have internet connection but failed to connect to the server
  serverError,

  // connected to the server but an exception occurred (exception in the )
  serverException
}

// enum StatusRequest {
//   none,
//   loading,
//   success,

//   /// connected but failed to complete the operation, eg. (adding existing email)
//   failure,

//   /// server error (problem with the server itself )
//   serverFailure,

//   /// no internet,
//   offlineFailure,

//   serverException,
// }
