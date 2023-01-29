function fn() {
  karate.configure('connectTimeout', 50000);
  karate.configure('readTimeout', 50000);
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
 var config = {
        env: env,
        testConfig:   'bar',
        urlApi:       'url',
        datajson:     'json',
        var_headers:  {'Authorization': 'Basic YWRtaW46cGFzc3dvcmQxMjM=','Cookie':'token=abc123', 'Accept':'application/json', 'Content-Type':'application/json'}
    }
    switch (env){
        case "dev":
        config.urlApi     = 'https://restful-booker.herokuapp.com';
        config.datajson   = 'dev';
        break;

  }
  return config;
}