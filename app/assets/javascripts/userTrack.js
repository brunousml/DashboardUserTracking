/***
 *  This function create cookie node
 *
 *  Use this function to add new fields on a cookie.
 *  You need pass a name, a value and a number of days, to expire this node.
 *
 *  name: node cookie name
 *  value: Value to set in this name
 *  days: Number of days what you want to live the node value.
 *
 ***/
function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    }
    else var expires = "";
    document.cookie = name+"="+value+expires+"; path=/";
}

/***
 * this function generates the uuid
 ***/
function guid() {
    function s4() {
        return Math.floor((1 + Math.random()) * 0x10000)
            .toString(16)
            .substring(1);
    }

    return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
        s4() + '-' + s4() + s4() + s4();
}


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
    var id = guid();
    var expire_days = 10;
    var now = new Date().getTime();

    // Add cookies
    createCookie('uuid', id, expire_days);
    createCookie('url', document.URL, expire_days);
    createCookie('datetime', now, expire_days);
}

/***
 *  This function delete a node of cookies
 *
 *  If necessary, you can delete a node from a browser cookies. Pass the name and lost the key-value
 *
 *  name:  Name of node to exclude
 ***/
function eraseCookie(name) {
    createCookie(name,"",-1);
}


/***
 *  This function read a cookie node
 *
 *  When you want to read a node of cookies. Pass the same name informed in createCookie variable.
 *
 *  name: Name of the node what you want to read
 ***/
function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}


//////////// Create Cookies ////////////////
(function() {
    setCookies();
})();
