class Cursor: 
    def execute(self, query, param):
       return Result()

class Result:
    def fetchone(self):
        return "correct_password"

    def fetchall(self):
        return ["correct_password"]

cursor = Cursor()
        
def login(request):
    username = request["username"]
    password = request["password"]
    result = cursor.execute("SELECT password FROM users WHERE username=%s", username).fetchall()
    if result.__len__() == 0:
        message = "login failed"
        log("login failed")
    elif not (result[0] == request["password"]):
        message = "incorrect password"
        log(message)
    else:
        message = "login successful"
        log(message)

login({"username": "invalid_user", "password": "some_password"}.__taint__())