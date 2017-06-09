class LRUCache
  attr_reader :cache, :cache_limit

  def initialize(limit = 4)
    @cache = []
    @cache_limit = limit
  end

  def count
    # returns number of elements currently in cache
    cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    @cache.delete(el) if cache.include?(el)

    @cache << el

    @cache.shift if count > cache_limit
  end

  def show
    # shows the items in the cache, with the LRU item first
    print cache
  end

  private
  # helper methods go here!

end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show
