class Array
  def my_unique
    new_array = []
    self.each do |el|
      new_array << el unless new_array.include?(el)
    end
    new_array
  end

  def two_sum
    new_array = []
    i = 0
    while i < self.length-1
      j = i +1
      while j < self.length
        new_array << [i,j] if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end
    new_array
  end

  def my_transpose
    new_array = Array.new(self.length){Array.new()}
    i = 0
    self.each do |rows|
      rows.each_with_index do |el, index|
        new_array[index] << el
      end
    end
    new_array
  end

  def stock_picker
    min = self.first
    max = 0
    min_day = 0
    max_day = self.length-1

    self.each_with_index do |el, index|
      if el < min && index < max_day
        min = el
        min_day = index
      elsif el > max && min_day != index
        max = el
        max_day = index
      end
    end
    [min_day, max_day]
  end
end
