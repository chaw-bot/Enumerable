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



