require './enumberable'

class MyList
  include MyEnumberable

  def initialize (*list)
    @list = list
    # print  @list
  end

  def list
    @list
  end
end


list = MyList.new(1, 3, 5)

# p list.list

puts [1, 2, 3, 4].all? {|e| e > 5}
puts list.list.all? {|e| e > 5}

puts list.list.any? {|e| e == 2}
puts list.any? {|e| e == 5}
