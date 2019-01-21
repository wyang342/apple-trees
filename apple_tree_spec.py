from apple_tree import AppleTree
from mamba import description, context, it
from expects import expect, equal, be_above_or_equal, be_false, be_true
import itertools

with description('AppleTree#age_tree') as self:
  with it('ages the tree when called'):
    tree = AppleTree()
    expect(tree.age).to(equal(0))
    tree.age_tree()
    expect(tree.age).to(equal(1))

with description('AppleTree#age_tree') as self:
  with it('makes the tree grow in height as it gets older'):
    tree = AppleTree()
    expect(tree.height).to(equal((0)))
    tree.age_tree()
    expect(tree.age).to(be_above_or_equal((1)))

with description('AppleTree#is_dead') as self:
  with it('lets you know when the tree is dead'):
    tree = AppleTree()
    expect(tree.is_dead).to(be_false)
    tree.age = 500
    expect(tree.is_dead).to(be_true)

with description('AppleTree#any_apples') as self:
  with it('will let you know if there are any apples on the tree'):
    tree = AppleTree()
    expect(tree.any_apples).to(be_false)
    for _ in itertools.repeat(None, 10):
      tree.age_tree()
    expect(tree.any_apples).to(be_true)

with description('AppleTree#pick_an_apple') as self:
  with it('returns an apple object from your tree'):
    tree = AppleTree()
    for _ in itertools.repeat(None, 10):
      tree.age_tree()
    expect(type(tree.pick_an_apple).__name__).to(equal('Apple'))