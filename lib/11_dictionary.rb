class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries

  def initialize
      @entries = {}
  end

  def add(num)
      if (num.class != Hash)
          @entries[num] = nil
      else
          num.each do |key, val|
              @entries[key] = val
          end
      end
  end

  def include?(num)
      if (@entries.has_key?(num))
          return true
      else
          return false
      end
  end

  def keywords
      @entries.keys.sort
  end

  def find(num)
      matched = /\Anum{1,}/

  end


end
