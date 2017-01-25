# Apple Tree 1 - Just Apples

##Learning Competencies

* Modeling systems with objects.
* Use instance variables and accessor methods effectively
* Work with objects in Ruby

##Summary

Rainy Washington grows apples. Fun fact: on average, Washington state grows 125 million boxes of apples per year. At 40 lbs per box, that’s 2.5 million TONS of apples!

Let's create a toy program to model an apple tree growing over the years.  We plant the apple tree, wait for it to bear some fruit, and then pick all the apples as soon as it does.

The tests in `apple_tree_spec.rb` show how all this might work together.

##Releases

###Release 0 : Implement the AppleTree and Apple classes

Use `attr_reader`, `attr_writer`, and/or `attr_accessor` so that we can call `tree.height` and `tree.age` to get a tree's height or age, respectively.  Which of the three `attr_` methods should you be using and why?

Do the same with the `Apple` class so that we can call `apple.diameter` to get an apple's diameter.

You should write tests for these methods.

#### Implement Aging

As a tree ages, it grows taller.  Eventually it starts bearing fruit and stops growing &mdash; not necessarily at the same time.  Some years later, the tree dies and can bear fruit no more!

Implement an `AppleTree#age!` instance method that will age your tree one year.  Each year the tree should get some amount taller, and then eventually stop growing.  You can decide when the tree stops growing.

Later, it should die.

At this point your `AppleTree` class should:

1. Have an `AppleTree#height` method which returns the tree's current height
2. Have an `AppleTree#age` method which returns the tree's current age
3. Have an `AppleTree#age!` method which ages the tree one year and grows the tree a little, if it's able to grow
4. Have an `AppleTree#dead?` method which returns `true` if the tree has died

Update your tests to test these methods and their side-effects.

> **Note: Don't use things like `instance_variable_get` in your tests to "peek inside" as you write your tests. Try to write tests that assert correctness using only the public methods you've exposed. If you get stuck on this, ask for help.

#### Implement Apple-picking

After some number of years &mdash; you decide &mdash; the apple tree starts to bear fruit.  Write a method `AppleTree#any_apples?` which returns `true` if there are any apples on the tree and `false` otherwise.

Also write a method `AppleTree#pick_an_apple!` which will return one of the apples on the tree (an instance of the `Apple` class).  If you try to pick an apple when there are no apples left, your code should raise a `NoApplesError` (defined in the source code).

The `Apple` class needs to be implemented by this point, including `Apple.new` and `Apple#diameter`.

Write tests for your methods. Make sure you assert their behavior and side-effects.

#### Does the script run?

Now that you've implemented your code and created tests for it, let's try and run it. Fill out `runner.rb` to calculate `avg_diameter`, then run the file to see your classes in action.

Does the script at the top of the challenge run and output what you'd expect?  (Hint: you have to be clear about your expectations before you answer that question.)

If not, what are the errors or unexpected behaviors?  Do you understand them? Fix your code and write tests that would have caught your bug(s). You might need to update existing tests if you find you were asserting the wrong thing, or in the wrong way.

##Resources

* Video: [Variable Scopes in Ruby](http://www.youtube.com/watch?v=iLxKNUFHAnY)
* StackOverflow: [Why use Ruby's attr_accessor, attr_reader, and attr_writer?](http://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer)
* StackOverflow: [What is attr_accessor in Ruby?](http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby)
* https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
