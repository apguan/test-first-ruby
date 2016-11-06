class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries

  def initialize
      @entries = {}
  end

#adds hash into @entries. If statement can use argument as string rather than num[key]
  def add(num)
      if (num.class != Hash)
          @entries[num] = nil
      else
          num.each do |key, val|
              @entries[key] = val
          end
      end
  end

#checks if @entries includes the key in hash
  def include?(num)
      if (@entries.has_key?(num))
          return true
      else
          return false
      end
  end

#returns all keys in hash sorted
  def keywords
      @entries.keys.sort
  end

#finds prefixes
  def find(num)
#instantiate new hash. Run through @entries, and get key and val.
      new_hash = {}
      @entries.each do |key,val|
          if (/\A[#{num}]{1,}/.match(key) && val != nil)
              new_hash[key] = val
          end
      end
      return new_hash
  end

  def printable
    print_results = @entries.sort.map do |key,value|
    "[#{key}] \"#{value}\""
    end
	print_results.join("\n")
  end

end
