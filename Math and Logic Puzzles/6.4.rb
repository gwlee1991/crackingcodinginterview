# Ants on a Triangle: There are three ants on different vertices of a triangle. What is the probability of
# collision (between any two or all of them) if they start walking on the sides of the triangle? Assume that
# each ant randomly picks a direction, with either direction being equally likely to be chosen, and that
# they walk at the same speed.
# Similarly, find the probability of collision with n ants on an n-vertex polygon.

# solution
# The only way the ants will not collide with each other is if they are all going the same direction. They only
# have 2 options which is to go clockwise or counter-clockwise. We calculate the possibility of the ants all going
# the same way for the two options and subtract from 1. The result will be the probability of having at least
# 1 ant going the opposite way.

# all clockwise = 1/2 * 1/2 * 1/2 = 1/8 since 3 ants
# all counter-clockwise = 1/2 * 1/2 * 1/2 = 1/8
# probability of ants all going the same way = 1/4
# 1 - 1/4 = 3/4
# probability of ants colliding will be 3/4

# using the same concept for n-vertex polygon
# 1 - {2 * (1/2)^n}