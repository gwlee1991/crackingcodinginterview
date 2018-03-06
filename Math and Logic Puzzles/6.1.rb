# TheHeavyPill: You have 20 bottles of pills. 19 bottles have 1.0 gram pills,
# but one has pills of weight 1.1 grams. Given a scale that provides an exact
# measurement, how would you find the heavy bottle? You can only use the scale
# once.

# solution(mind blown)
# label the bottles from 1 - 20.
# From bottle 1, take 1 pill, from bottle 2, take 2 pills, bottle 3, 3 pills and so on.
# get all the pills into another bottle and weigh the bottle with all the pills that 
# we took out from the bottle.
# if all pills were 1.0 grams, the total weight should be (1 + 2 + 3 ... + 20) grams which is 
# 210 grams. From the actual weight(lets say 213.3grams), subtract 210 grams. 
# This gives us 3.3 grams. Divide this number by 1.1 grams.
# That would give us the bottle number which is 3.

