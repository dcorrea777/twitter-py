from user import User

for item in User.scan(User.name.startswith('A')):
    print(item.name)
