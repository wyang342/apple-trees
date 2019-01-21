import random
import itertools
import random

class Apple:
  def __init__(self):
    pass

class AppleTree:
  def __init__(self):
      self.age = 0
      self.height = 0
      self.death_age = 100
      self.fruit_bearing_age = 3
      self.apples = []
  
  def age_tree(self):
      self.age += 1
      self.height += random.randint(1,7)
      if self.age >= self.fruit_bearing_age:
          for _ in itertools.repeat(None, 10):
              self.apples.append(Apple(random.randint(0,10)))
   
  def is_dead(self):
      # embed()
      return self.age >= self.death_age
    
  def any_apples(self):
      return len(self.apples) > 0

  def pick_an_apple(self):
    raise Exception('This tree has no apples')
    
