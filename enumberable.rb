module MyEnumberable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  def filter
    results = []
    each { |item| results << element if yield item }
    results
  end
end
