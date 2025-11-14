class Cursor: 
    def execute(self, query, param):
       return Result()

class Result:
    def fetchone(self):
        return "correct_password"

    def fetchall(self):
        return ["correct_password"]

cursor = Cursor()
        