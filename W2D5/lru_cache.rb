class LRUCache
    def initialize()
        @size = size
        @cache = []
    end

    def count
      @cache.count
    end

    def add(el)
      if @cache.include?
        @cache.delete(el)
      elsif count >= @size
        @cache.shift
      end
      @cache << el
    end

    def show
      puts @cache.inspect
      nil
    end

    private


    end

  end