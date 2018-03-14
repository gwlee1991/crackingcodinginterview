# Blue-Eyed Island: A bunch of people are living on an island, when a visitor comes with a strange
# order: all blue-eyed people must leave the island as soon as possible. There will be a flight out at
# 8:00pm every evening. Each person can see everyone else's eye color, but they do not know their
# own (nor is anyone allowed to tell them). Additionally, they do not know now many people have
# blue eyes, although they do know that at least one person does. How many days will it take the
# blue-eyed people leave?

# when there is only 1 person that has blue eyes, after looking around, he should know that he's the only
# person with a blue eye. Therefore he can leave that evening.

# if there are 2 blue eyed people, they wouldn't know how many blue eyed people there are in the group. However,
# since if there was only 1 blue eyed person, they would leave on the first night. If they still see the same person
# the next day, they would both leave on the second evening.

# if 3, same logic applies and if they don't see anyone leaving until the second night, the three would leave
# on the third evening.

# conclusion number of blue eyed = days it takes for blue eyed people to leave.
