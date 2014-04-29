class Bottles
  def sing
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    Verse.new(num).to_s
  end
end

class Verse
  attr_reader :num

  def initialize(num)
    @num = num
    @variant = variant_for
  end

  def to_s
    "#{@variant.current_quantity.capitalize} #{@variant.current_container} of beer on the wall, " +
    "#{@variant.current_quantity} #{@variant.current_container} of beer.\n" +
    "#{@variant.action}, " +
    "#{@variant.remaining_quantity} #{@variant.remaining_container} of beer on the wall.\n"
  end

  def variant_for
    begin
      Object.const_get("Variant#{num}").new(num)
    rescue
      Variant.new(num)
    end
  end

end

class Variant

  attr_reader :num

  def initialize(num)
    @num = num
  end


  def current_quantity
    num.to_s
  end

  def remaining_quantity
    (num - 1).to_s
  end

  def current_container
    'bottles'
  end

  def remaining_container
    'bottles'
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    'one'
  end


end

class Variant0 < Variant

  def remaining_quantity
    99.to_s
  end

  def current_quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end
end

class Variant1 < Variant

  def remaining_quantity
    "no more"
  end

  #def current_quantity

  #end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    "it"
  end

  def current_container
    "bottle"
  end
end

class Variant2 < Variant

  def remaining_container
    "bottle"
  end

end

class Variant6 < Variant

  def current_container
    "pack"
  end

  def current_quantity
    "one 6"
  end
end

class Variant7 < Variant

  def remaining_container
    "pack"
  end

  def remaining_quantity
    "one 6"
  end
end
