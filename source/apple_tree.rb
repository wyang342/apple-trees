# This is how you define your own custom exception classes
class NoApplesError < StandardError
end

class AppleTree
  # Ages the tree one year
  def age!
  end

  # Returns +true+ if there are any apples on the tree, +false+ otherwise
  def any_apples?
  end

  # Returns an Apple if there are any
  # Raises a NoApplesError otherwise
  def pick_an_apple!
    raise NoApplesError, "This tree has no apples" unless self.any_apples?

    # apple-picking logic goes here
  end
end

class Apple
  # Initializes a new apple with diameter +diameter+
  def initialize(diameter)
  end
end
