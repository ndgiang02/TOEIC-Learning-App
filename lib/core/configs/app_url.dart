class AppUrl {
  static var baseUrl = 'http://192.168.1.155:5000';
  static var imgUrl = 'http://192.168.1.155:9000';

  static var loginEndPoint = '$baseUrl/api/auth/login';
  static var registerEndPoint =  '$baseUrl/api/auth/register' ;
  static var logoutEndPoint =  '$baseUrl/api/auth/logout' ;

  static var getUserEndPoint = '$baseUrl/api/auth/get-user-info';

}
