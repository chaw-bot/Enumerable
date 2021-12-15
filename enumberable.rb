module MyEnumberable
  def all?
    each do |item| 
      return true unless yield item
      true
    end
  end

  def any?
    each do |item|
      return true if yield item
      false
    end
  end

  def filter
    results = []
    each do |item|
      results << element if yield item
      results
    end
  end
end
