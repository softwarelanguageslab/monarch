


        
def login(request):
    username = request["username"]
    password = request["password"]
    result = execute_sql("SELECT password FROM users WHERE username=?", username)

    if result == request["password"]:
        raise LoginFailed()
    else:
        # log("authentication: failed authentication for " + request + " with " + result)
        response = "login_failed"
    


def main():
    try:
        login({"username": "foo", "password": "bar"})
    except SqlException as ex:
        log("could not execute SQL query for logging in")
    except LoginFailed:
        log("login failed")


