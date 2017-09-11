require('do_it_yourself_hash_class')
require('rspec')
require('pry')

describe('MyHash')do
  describe('#MyFetch?')do
    it("will return a the value associated with the key")do
      test_hash = MyHash.new()
      test_hash.myStore("cat", "whiskers")
      expect(test_hash.myFetch("cat")).to(eq("whiskers"))
    end
  end
  describe('#hasKey?')do
    it("will return a true if the given key is present")do
      test_hash = MyHash.new()
      test_hash.myStore("cat", "whiskers")
      expect(test_hash.hasKey?("cat")).to(eq(true))
    end
  end
  describe('#has_value?')do
    it("will return true if the given value is present")do
      test_hash = MyHash.new()
      test_hash.myStore("cat", "whiskers")
      expect(test_hash.has_value?("whiskers")).to(eq(true))
    end
  end
  describe('#length')do
    it("will return the number of key value pairs in this MyHash object")do
      test_hash = MyHash.new()
      test_hash.myStore("cat", "whiskers")
      test_hash.myStore("dog", "Doggo")
      test_hash.myStore("Pot-Bellied Pig", "Senor Oinks")
      expect(test_hash.length()).to(eq(3))
    end
    it("will return the number of key value pairs in this MyHash object")do
      test_hash = MyHash.new("ferret", "pickles", "cat", "whiskers", "dog", "Doggo")
      test_hash.myStore("Pot-Bellied Pig", "Senor Oinks")
      expect(test_hash.length()).to(eq(4))
    end
  end
  describe('#merge')do
    it("will return a MyHash object containing the contents of the original MyHash and the one passed in")do
      test_hash1 = MyHash.new("ferret", "pickles", "cat", "whiskers", "dog", "Doggo")
      test_hash2 = MyHash.new("ferret2", "pickles2", "cat2", "whiskers2", "dog2", "Doggo2")
      expect(test_hash1.merge(test_hash2)) == MyHash.new("ferret", "pickles", "cat", "whiskers", "dog", "Doggo", "ferret2", "pickles2", "cat2", "whiskers2", "dog2", "Doggo2")
    end
  end
end
