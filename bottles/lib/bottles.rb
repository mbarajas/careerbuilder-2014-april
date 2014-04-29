class Bottles

  def sing
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    "#{quantity(num).capitalize} #{container(num)} of beer on the wall, " +
    "#{quantity(num)} #{container(num)} of beer.\n" + 
    "#{action(num)}, "  +
    "#{quantity(num - 1)} #{container(num - 1)} of beer on the wall.\n"
  end

  def container(num)
    if num == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(num)
    if num == 1
      "it"
    else
      "one"
    end
  end

  def quantity(num)
    if num == 0
      "no more"
    elsif num < 0
      99.to_s
    else
      num.to_s
  end
end

  def action(num)
    if num == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(num)} down and pass it around"
    end
  end

end

