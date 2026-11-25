# Objects whose (class) attributes are tainted: both sinks should raise an alarm.
class Account:
    pass

class Config:
    secret = random().__taint__()

def instance_attribute():
    account = Account()
    account.balance = random().__taint__()
    return Taint().sink(account)

def class_attribute():
    return Taint().sink(Config())

(instance_attribute(), class_attribute())
