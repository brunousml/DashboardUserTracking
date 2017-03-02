(function(window){
    'use strict';
    function define_library(){
        var UserTrack = {
            /***
             *  This function create cookie node
             *
             *  name: node cookie name
             *  value: Value to set in this name
             *  days: Number of days what you want to live the node value.
             ***/
            createCookie: function (name,value,days) {
                if (days) {
                    var date = new Date();
                    date.setTime(date.getTime()+(days*24*60*60*1000));
                    var expires = "; expires="+date.toGMTString();
                }
                else var expires = "";
                document.cookie = name+"="+value+expires+"; path=/";
            },

            /***
             * this function generates the uuid
             ***/
            guid: function () {
                function s4() {
                    return Math.floor((1 + Math.random()) * 0x10000)
                        .toString(16)
                        .substring(1);
                }

                return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
                    s4() + '-' + s4() + s4() + s4();
            },

            /***
             *  This function read a cookie node
             *
             *  When you want to read a node of cookies. Pass the same name informed in createCookie variable.
             *
             *  name: Name of the node what you want to read
             ***/
            readCookie: function (name) {
                var nameEQ = name + "=";
                var ca = document.cookie.split(';');
                for(var i=0;i < ca.length;i++) {
                    var c = ca[i];
                    while (c.charAt(0)==' ') c = c.substring(1,c.length);
                    if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
                }
                return null;
            },

            push:function () {

                console.log(UserTrack.readCookie('uuid'));

                // ajax call to api
            }
        };
        return UserTrack;
    }
    
    function push() {
        setTimeout(function(){
            UserTrack.push()
        }, 3000);
    }

    // Define globally if it doesn't already exist
    if(typeof(UserTrack) === 'undefined'){
        window.UserTrack = define_library();

        push();
    }
    else{
        console.log("UserTrack already defined.");
    }
})(window);


// TODO: Move this code below to the right place.

/***
 *  This function generates set all cookies necessarily to our application.
 *
 *  guid = generate a unique identifier to visitant
 *  url = Track the Urls accessed
 *  datetime = Date and time of access
 *
 ***/
function setCookies() {
    // Log
    console.log("Call setCookie");

    // Set up
    var id = UserTrack.guid();
    var expire_days = 10;
    var now = new Date().getTime();

    // Add cookies
    UserTrack.createCookie('uuid', id, expire_days);
    UserTrack.createCookie('url', document.URL, expire_days);
    UserTrack.createCookie('datetime', now, expire_days);
}

//////////// Create Cookies ////////////////
(function() {
    UserTrack.createCookie('uuid', UserTrack.uuid, 10);
})();