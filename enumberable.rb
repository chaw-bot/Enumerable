module MyEnumberable
  def all?
    yield
  end

  def any?
    yield
  end

  def filter
    yield
  end
end
