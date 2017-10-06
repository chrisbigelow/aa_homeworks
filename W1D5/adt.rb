class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue
  def intitialize
    @queue = []
  end

  def dequeue
    @queue.shift
  end

  def enqueue(el)
    @queue << el
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  #assign(key, value), lookup(key), remove(key), show

  def assign(key,value)
    @map.each do |el|
      if el[0] == key
        el[1] = value
        return
      end
    end
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |el|
      if el[0] == key
        return el
      end
    end
    nil
  end

  def remove(key)
    new_array = @map.reject { |el| el[0] == key }
    @map = new_array
  end

  def show
    deep_dup(@map)
  end

  def deep_dup(arr)
    arr.map {|el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
