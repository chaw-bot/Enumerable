require_relative './enumerable'

class MyList
  include MyEnumerable
  @list = []

  def each
    yield
  end
end
