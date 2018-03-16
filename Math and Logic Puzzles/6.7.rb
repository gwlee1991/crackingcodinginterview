# The Apocalypse: In the new post-apocalyptic world, the world queen is desperately concerned
# about the birth rate. Therefore, she decrees that all families should ensure that they have one girl or
# else they face massive fines. If all families abide by this policy - that is, they have continue to have
# children until they have on girl, at which point they immediately stop - what will the gender ratio
# of the new generation be? (Assume that the odds of someone having a boy or girl on any given
# pregnancy is equal.) Solve this out logically and then write a computer simulation of it.

# assumption first generation has same number of men and women
# on first try, all couples (1 male, 1 female) have 50/50 chance of a boy or girl. => number of population in world = n
# half of the couples will have 1 girl => n/4
# other half will have 1 boy => n/4

# so eventually new population after the new generation would be 
# n + n/2 + n/4 + n/8 + ....
# this would result in a very close number to 2n
# so we can say the population doubled.

# now how about gender ratio?
# it should be close to 0.5.
# for every boy count, there's a corresponding girl count. since couples stop only if there's a girl in the family.

# computed simulation

def one_family
  girl = 0
  boy = 0
  while girl == 0
    random = rand(2)
    if random == 0
      girl += 1
    else
      boy += 1
    end
  end
  gender = [girl, boy]
  gender
end

def gender_ratio(families)
  girls = 0.0
  boys = 0.0
  1.upto(families) do 
    gender = one_family
    girls += gender[0]
    boys += gender[1]
  end

  return girls/(boys + girls)
end


puts gender_ratio(100)
