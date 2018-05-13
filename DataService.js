function request(verb, endpoint, obj, cb, auth) {

    var BASE = 'http://medistation.herokuapp.com/api'

    var data = obj ? JSON.stringify({
      "weight": user_weight,
      "height": user_height,
      "temperature": user_temperature,
      "pulse_rate": user_pulse,
      "blood_pressure": user_bloodpressure,
      "bmi": user_bmi,
      "user_id": user_id
    }) : '';

    print('Token: ' + user_token);
    print('Token: ' + JSON.stringify(data));

    print('request: ' + verb + ' ' + BASE + (endpoint?'/' + endpoint:''));

    var xhr = new XMLHttpRequest();
    xhr.withCredentials = true;
    xhr.open(verb, 'http://medistation.herokuapp.com/api' + (endpoint?'/' + endpoint:''));
    xhr.setRequestHeader('Content-Type', 'application/json');

    if (auth)
        xhr.setRequestHeader('Authorization', 'Basic ' + Qt.btoa(auth.username + ":" + auth.password));
    else
        xhr.setRequestHeader("x-access-token", user_token);

    xhr.onreadystatechange = function() {
        print('xhr: on ready state change: ' + xhr.readyState)
        if(xhr.readyState === XMLHttpRequest.DONE) {
            print('xhr: on ready status: ' + xhr.status + " : " + xhr.statusText)

            if(xhr.status == 200 )
            {
                if(cb) {
                    var res = JSON.parse(xhr.responseText.toString());
                    cb(res);
                }
            }

            if (xhr.status == 401)
            {
                if(cb){
                    var ress = xhr.responseText.toString();
                    cb(ress);
                }
            }
        }
    }

    xhr.send(data);
}

function post_login(cb, auth) {
    // GET http://medistation.herokuapp.com/api/users/login
    request('POST', 'users/login', null, cb, auth)
}

function post_data(cb, entry) {
    // POST http://medistation.herokuapp.com/api/data
    request('POST', 'data', entry, cb, null)
}
