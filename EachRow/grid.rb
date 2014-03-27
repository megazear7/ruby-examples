class Grid
  def initialize
    counter = 0
    @grid = Array.new(3) { Array.new(3) { counter += 1 } }
  end

  # this method can changed in order to make the issue commented
  # in the test file to be resolved
  def each_item_in_row row
    @grid[row].each do |item|
      yield item
    end
  end

  # this method can changed in order to make the issue commented
  # in the test file to be resolved
  def each &block
    @grid.each do |row|
      row.each(&block)
    end
  end

  def to_s
    str = ""
    @grid.each do |row|
      row.each do |item|
        str += item.to_s + "\t"
      end
      str += "\n"
    end
    str
  end
end
