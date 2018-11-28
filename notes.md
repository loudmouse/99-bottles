# Open / Closed Principle
  # open for extension and closed for modification
    # when you need to add a new feature, first rearrance the code to make it open to the new feature, and then add the new code
# Code Smells
  # a way of naming common code flaws and a system for refactoring them to clean them up
    # examples are duplicated code and classes that are too large
# Flocking Rules
  # select the things that are most alike
  # find the smallest difference between them
  # make the simplest change that will remove that difference
    # parse the new code
    # parse and execute it
    # parse, execute, and use its result
    # delete unused code


# To make your code open to a new feature,
# first identify things you don't like about the code.
# These may lead to code smells.
# Now refacor the code to remove the code smell.
# You may open the code to the new feature once the smell is removed.

# To remove the small difference between differing strings we replaced them with a common message send.

# Liskov Substitution Principle
