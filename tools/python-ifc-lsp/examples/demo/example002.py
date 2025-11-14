class Cursor: 
    def execute(self, query, param):
       return Result()

class Result:
    def fetchone(self):
        return "correct_password"

cursor = Cursor()

def traced_reply(request, reply_data, logger):
    logger("trace: " + request["username"] + ":" + request["password"] +  "with reply" + reply_data)
    return reply_data

def log_disabled(message):
    # do nothing: logging is disabled
    pass   

def login(request):
    username = request["username"]
    password = request["password"]
    result = cursor.execute("SELECT password FROM users WHERE username=%s", username).fetchone()

    if result == request["password"]:
        response = "ok"
    else:
        # log("authentication: failed authentication for " + request + " with " + result)
        response = "login_failed"
    
    # Sensitive reply, do not log!
    return traced_reply(request, response, log)

login({"username": "invalid_user", "password": "some_password"}.__taint__())