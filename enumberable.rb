module MyEnumberable
  def my_all?(*params)
    result = true
    if !params[0].nil?
      each do |item|
      result = false unless params[0] === item
    end
    elsif !block_given?
      each do |item|
      result = false unless item
    end
    else
      each do |item|
      result = false unless yield(item)
    end
    end
    result
  end
