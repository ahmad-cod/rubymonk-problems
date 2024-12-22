class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0, &block)
    if !block_given?
      @array.reduce(initial_value) { |memo, num| memo + num }
    else
      @array.reduce(initial_value) { |memo, num| memo + block.call(num) }
    end
  end
end
