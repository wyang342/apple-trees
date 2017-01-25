require_relative 'apple_tree'

describe AppleTree do
  let(:tree) { AppleTree.new }

  #You'll need to switch `pending` to `describe` when you're ready
  # to implement each set of tests.

  pending '#age' do
  end

  pending '#height' do
  end


  pending '#age!' do
    it 'should change the age' do
      #This should be more explicit. How much should the tree age by?
      #https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
      expect{tree.age!}.to change{tree.age}
    end

    it 'should make the tree grow' do
      #This should be more explicit. How much should the tree grow?
      expect{tree.age!}.to change{tree.height}
    end

    it 'should cause the tree to eventually die' do
    end
  end

  pending '#dead?' do
    it 'should return false for an alive tree' do
    end

    it 'should return true for a dead tree' do
    end
  end

  pending '#any_apples?' do
    it 'should return true if apples are on the tree' do
    end

    it 'should return false if the tree has no apples' do
    end
  end

  pending '#pick_an_apple' do
    it 'should return an apple from the tree' do
    end
  end
end
