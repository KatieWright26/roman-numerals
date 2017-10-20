class Fixnum

  def to_roman
    output = ''
    start_val = self
    convert = {
      1000 => "M",
      500 => "D",
      100 => "C",
      50 => "L",
      10 => "X",
      5 => "V",
      1 => "I"
    }
    start_val <= 1000 && start_val >= 500 ? roman(start_val, 500, output, convert): ''
    start_val <= 500 && start_val >= 100 ? roman(start_val, 100, output, convert): ''
    start_val <= 100 && start_val >= 50 ? roman(start_val, 50, output, convert): ''
    start_val <= 50 && start_val >= 10 ? roman(start_val, 10, output, convert): ''
    start_val <= 10 && start_val >= 5 ? roman(start_val, 5, output, convert): ''
    start_val < 5 && start_val > 0 ? roman(start_val, 1, output, convert): ''
    output
  end

  def roman(start_val, convert_val, output, convert)
    update_val = start_val % convert_val
    character_count = (start_val - update_val) / convert_val
    output << convert[convert_val] * character_count
    start_val = update_val
  end

  # convert.each do |decimal, roman|
  #   if start_val <= decimal && start_val >= decimal/2 && decimal >= 5
  #     update_val = start_val % decimal
  #     character_count = (start_val - update_val) / decimal
  #     output << roman * character_count
  #     start_val = update_val
  #   elsif decimal == 1 && start_val < 5
  #     output << roman * start_val
  #   end
  # end
end
