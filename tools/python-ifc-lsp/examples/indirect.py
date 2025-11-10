
def traced_reply(request, reply_data, logger):
    logger("trace: " + request +  "with reply" + reply_data)
    return reply_data

def log_disabled(message):
    # do nothing if logging is disabled
    pass   

def login(request):
    username = request["username"]
    password = request["password"]
    result = execute_sql("SELECT password FROM users WHERE username=?", username)

    if result == request["password"]:
        response = "ok"
    else:
        # log("authentication: failed authentication for " + request + " with " + result)
        response = "login_failed"
    
    # Sensitive reply, do not log!
    return traced_reply(request, response, log_disabled)
