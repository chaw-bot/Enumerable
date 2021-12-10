require_relative './enumberable'

class MyList
  include MyEnumberable

  def initialize(*list)
    @list = list
  end

  def each
    (0..@list.length - 1).each do |i|
      yield @list[i]
    end
  end
  attr_reader :list

end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e > 5 })
puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

puts(list.list.filter(&:even?))