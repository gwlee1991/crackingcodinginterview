# Poison: You have 1000 bottles of soda, and exactly on is poisoned. You have 10 test strips which
# can be used to detect poison. A single drop of poison will turn the test strip positive permanently.
# You can put any number of drops on a test strip at once and you can reuse a test strip as many times
# as you'd like (as long as the results are negative). However, you can only run tests once per day and
# it takes seven days to return a result. How would you figure out the poisoned bottle in as few days 
# as possible?
# Follow up: Write code to simulate your approach

# Day1: test each strip for first digit
# ex. strip0 => 0xx
# strip1 => 1xx
# etc.

# Day2: test each strip for second digit
# ex.strip0 => x0x
# strip1 => x1x
# etc.

# Day3: test each strip for third digit
# ex.strip0 => xx0
# strip1 => xx1
# etc.

# Day4: (for worst case) test each strip for third digit, but shift the strips
# ex.strip0 => xx1
# strip1 => xx2

# on Day 8 we will know the first digit of the bottle with poison.
# on Day 9 we will know the second digit of the bottle with poison.
# on Day 10 we will know the third digit of the bottle with poison.
# on Day 11 we will clear any ambiguity caused by duplicate digits.

# ex. on Day 8 strip 3 shows positive result.
# on Day 9 strip 4 shows positive result.
# on Day 10 no strip change. (we know the poison is either in 3 or 4)
# on Day 11 if strip 2 shows positive results we know third digit is 3
# if no strip changes, we know the third digit is 4

