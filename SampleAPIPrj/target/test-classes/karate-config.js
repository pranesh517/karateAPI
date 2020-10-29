function() {
var config = {
}
config.baseUrl = 'http://dummy.restapiexample.com/api/v1';
config.wsdalUrl = 'http://10.102.0.45/wsdal101test';
config.create = '/create';
config.employee = '/employee';
config.getVersion = '/service.svc/ver';
karate.configure('connectTimeout', 10000);
karate.configure('readTimeout', 40000);
return config;
}