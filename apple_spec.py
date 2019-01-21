from apple_tree import Apple 
from mamba import description, context, it
from expects import expect, equal, be_above_or_equal


with description('Apple') as self:
  with it('has a diameter greater than 0'):
    apple = Apple()
    expect(apple.diameter).to(be_above_or_equal(1))
  