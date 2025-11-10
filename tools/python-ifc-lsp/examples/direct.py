def execute_sql(query, *parameters):
    return query

def log(data):
    Taint().sink(data)
    pass

def login(request):
    username = request["username"]
    password = request["password"]
    result = execute_sql("SELECT password FROM users WHERE username=?", username)

    if result == request["password"]:
        response = "ok"
    else:
        log("authentication: failed authentication for " + request + " with " + result)
        response = "login_failed"

    return response
        

def main():
    login()


main()    
