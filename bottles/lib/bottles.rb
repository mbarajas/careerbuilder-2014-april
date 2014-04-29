class Bottles

  def sing
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
<<<<<<< HEAD
    Verse.new(num).verse
  end

end



class Verse

attr_reader :num

    
=======
    Verse.new(num).to_s
  end
end

class Verse
  attr_reader :num

>>>>>>> 24c113d0b69506f109ff1abdbaadabbfd0ea27e3
  def initialize(num)
    @num = num
  end

<<<<<<< HEAD
  def verse
    "#{current_quantity.capitalize} #{starting_container} of beer on the wall, " +
    "#{current_quantity} #{starting_container} of beer.\n" + 
=======
  def to_s
    "#{current_quantity.capitalize} #{current_container} of beer on the wall, " +
    "#{current_quantity} #{current_container} of beer.\n" +
>>>>>>> 24c113d0b69506f109ff1abdbaadabbfd0ea27e3
    "#{action}, " +
    "#{remaining_quantity} #{remaining_container} of beer on the wall.\n"
  end

<<<<<<< HEAD
  def starting_container
    case @num
    when 1
      "bottle"
    else
      "bottles"
=======
  private

  def current_quantity
    case num
    when 0
      'no more'
    else
      num.to_s
    end
  end

  def remaining_quantity
    case num
    when 0
      99.to_s
    when 1
      'no more'
    else
      (num - 1).to_s
    end
  end

  def current_container
    case num
    when 1
      'bottle'
    else
      'bottles'
>>>>>>> 24c113d0b69506f109ff1abdbaadabbfd0ea27e3
    end
  end

  def remaining_container
<<<<<<< HEAD
    case @num
    when 2
      "bottle"
    else
      "bottles"
=======
    case num
    when 2
      'bottle'
    else
      'bottles'
    end
  end

  def action
    case num
    when 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def pronoun
    case num
    when 1
      'it'
    else
      'one'
>>>>>>> 24c113d0b69506f109ff1abdbaadabbfd0ea27e3
    end
  end

  def pronoun
    if @num == 1
      "it"
    else
      "one"
    end
  end

 def current_quantity
    if num == 0
      "no more"
    else
      num.to_s
  end
end

  def remaining_quantity
    case @num
    when 0
      99.to_s
    when 1
      "no more"
    else
      (@num - 1).to_s
    end

  end

  def action
    if @num == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end


end


