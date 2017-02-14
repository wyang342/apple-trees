require_relative 'apple_tree'

describe AppleTree do
  let(:tree) { AppleTree.new }
  
  describe '#age' do
    # write tests!
  end

  describe '#height' do
    # write tests!
  end


  describe '#age!' do
    it 'should age the tree\'s age by 1' do
      # https://www.relishapp.com/rspec/rspec-expectations/v/2-2/docs/matchers/expect-change
    end

    it 'should increase the tree\'s height' do
    end

    it 'should kill the tree eventually' do
    end
  end

  describe '#dead?' do
    # write tests to see if a tree is alive or dead!
  end

  describe '#any_apples?' do
    # write tests to see if a tree has any apples!
  end

  describe '#pick_an_apple' do
    # write tests to see that an apple is picked
    # also don't forget to test that an error has been raised when there are no more apples
    # https://www.relishapp.com/rspec/rspec-expectations/v/2-2/docs/matchers/expect-error
  end
end
