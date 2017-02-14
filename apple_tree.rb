class NoApplesError < StandardError
  # This is an example of how we create custom exception classes
end

class AppleTree
  def age!
    # This method will age the tree by one year
  end

  def any_apples?
    # If any apples are present, true. If no apples, false
  end

  def pick_an_apple!
    raise NoApplesError, "This tree has no apples" unless self.any_apples?
    # we should return an apple if there are any apples. if there are no apples, raise the NoApplesError
  end
end

class Apple
  def initialize(diameter)
    # all apples have diameters, yeah? some are large and others are small
  end
end
