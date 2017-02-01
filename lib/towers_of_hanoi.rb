class TowersOfHanoi

  def initialize(array = [[3,2,1],[],[]])
    @array = array
  end

  def get_user_input
    gets.chomp
  end

  def move(input1, input2)
    raise "not valid!" if input1 == input2
    if @array[input2].empty?
      @array[input2] << @array[input1].pop
    elsif valid?(@array[input1].last, @array[input2].last)
      @array[input2] << @array[input1].pop
    end
    input2
  end

  def valid?(el1, el2)
    return true if el2 > el1
    return true if el2.nil?
    raise "not valid!"
  end

  def won?
    return true if @array[1] == [3,2,1] || @array[2] == [3,2,1]
    false
  end

end
