class Cursor: 
    def execute(self, query, param):
       return Result()

class Result:
    def fetchone(self):
        return "correct_password"

cursor = Cursor()

def login(request):
    username = request["username"]
    password = request["password"]
    foo = username 
    bar = password
    result = cursor.execute("SELECT password FROM users WHERE username=%s", username).fetchone()
    if result == password:
        response = "ok"
    else:
        log("authentication: failed authentication for " + foo + ":" + bar + " with " + result)
        response = "login_failed"

    return response


login({"username": "invalid_user", "password": "some_password"}.__taint__())