class MyHash
  def initialize(*p)
    @keys_values = []
    i = 1
    while ( i < p.length )
      @keys_values.push([p[i-1], p[i]])
      i += 2
    end
  end

  def myStore(key, value)
    @keys_values.push([key,value])
  end

  def keys_values
    @keys_values
  end

  def hasKey?(key)
    @keys_values.each do |pair|
      if (pair[0] == key)
        return true
      end
    end
    false
  end

  def has_value?(value)
    @keys_values.each do |pair|
      if (pair[1] == value)
        return true
      end
    end
    false
  end
  def myFetch(key)
    @keys_values.each do |pair|
      if(key == pair[0])
        return pair[1]
      end
    end
  end
  def length()
    @keys_values.length
  end

  def merge(otherHash)
    combinedArray = @keys_values.concat(otherHash.keys_values())
    MyHash.new(combinedArray)
  end
end
