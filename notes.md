# Open / Closed Principle
  # open for extension and closed for modification
    # when you need to add a new feature, first rearrance the code to make it open to the new feature, and then add the new code

# Code Smells
  # a way of naming common code flaws and a system for refactoring them to clean them up
    # examples are:
      # duplicated code
      # classes that are too large
      # multiple methods that take the same argument
      # Primitive Obsession - methods that take the same argument, have the same shape, contain a conditional, could be considered private, depend more on the argument than the class as a whole.

# Flocking Rules
  # select the things that are most alike
  # find the smallest difference between them
  # make the simplest change that will remove that difference
    # parse the new code
    # parse and execute it
    # parse, execute, and use its result
    # delete unused code

# Extract Class is the refactoring recipe to fix the Primitive Obsession code smell


# To make your code open to a new feature,
# first identify things you don't like about the code.
# These may lead to code smells.
# Now refacor the code to remove the code smell.
# You may open the code to the new feature once the smell is removed.

# To remove the small difference between differing strings we replaced them with a common message send.

# Liskov Substitution Principle

# Create an abstraction
  # name the concept
  # create a method to represent it
  # replace this difference with a message send

# Refactoring in the smallest steps possible:
  # define a method for the concept
  # alter it to return one of the differences
  # replace that difference with a message send
  # add the `number` argument to the new method, with appropriate default
  # implement the conditional
  # pass the `number` argument from the current sender
  # send the message from the other branch, this time including the `number` argument
  # clean up

# name methods after what they mean
# name classes after what they are
