from apple_tree import AppleTree
from mamba import description, context, it
from expects import expect, equal, be_above_or_equal, be_false, be_true, raise_error
import itertools
from IPython import embed

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
    expect(tree.is_dead()).to(be_false)
    tree.age = 500
    expect(tree.is_dead()).to(be_true)

with description('AppleTree#any_apples') as self:
  with it('will let you know if there are any apples on the tree'):
    tree = AppleTree()
    expect(tree.any_apples()).to(be_false)
    for _ in itertools.repeat(None, 10):
      tree.age_tree()
    expect(tree.any_apples()).to(be_true)

  with it('raises an exception when there are no apples'):
    tree = AppleTree()
    for _ in itertools.repeat(None, 10):
      tree.age_tree()
    tree.apples = []
    expect(tree.pick_an_apple).to(raise_error(Exception, 'No apples on your tree'))