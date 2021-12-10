require_relative './enumberable'

class MyList
  include  MyEnumberable

  def initialize (*list)
    @list = list
    # p  @list
  end

  def list
    @list
  end
end


list = MyList.new(1, 2, 3, 4)
# puts list.list

puts list.list.all? {|e| e > 5}
puts list.list.all? {|e| e > 5}

puts list.list.any? {|e| e == 2}
puts list.list.any? {|e| e == 5}

