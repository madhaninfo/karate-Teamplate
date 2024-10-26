function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    Merchant_Signup_API:"https://dvplatform.mzpv3001.mezzofy.com/v3/master",
    Merchant_Signup_API_invalidUrl:"https://dvplatform.mzpv3001.mezzofy.com/v2/master",


  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}