require_relative './enumberable'

class MyList
  include MyEnumberable

  def initialize(*items)
    @list = []
    items.each { |item| @list << item }
  end

  def each
    return to_enum(:each) unless block_given?

    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
    @list
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e > 5 })
puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

p list.filter(&:even?)
