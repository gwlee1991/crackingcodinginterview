# 100 Lockers: There are 100 closed lockers in a hallway. A man begins by opening all 100 lockers.
# Next, he closes every second locker. Then, on this third pass, he toggles every third locker(closes it if
# it is open or opens if it is closed). This process consinues for 100 passes. such that on each pass i,
# the man toggles every i th locker. After his 100th pass in the hallway, in which he toggles only locker
# #100, how many lockers are open?

# whoo...copy and paste from book..

# For which rounds is a door toggled?
# A door n is toggled for once for each factor of n, including itself and 1.
# ex. Door 9 is toggled on rounds 1, 3, 9.

# When would a door be left open?
# When number of factors is odd. Starts closed. round1 opens lockers. 2 closes. 3 opens etc..

# When would factor be odd?
# when locker number is a squared number (etc. 1,4,9,16....,100)

# there are total of 10 squared numbers <= 100.

# 10 lockers are opened at the end
