class House
  
  def lyrics
    ["the horse and the hound and the horn that belonged to", "the farmer sowing his corn that kept", "the rooster that crowed in the morn that woke", "the priest all shaven and shorn that married", "the man all tattered and torn that kissed", "the maiden all forlorn that milked", "the cow with the crumpled horn that tossed", "the dog that worried", "the cat that killed", "the rat that ate", "the malt that lay in", "the house that Jack built"]
  end

  def recite
    1.upto(12).map {|i| line(i)}.join("\n")
  end

  def line(num)
    case num
    when 1
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 2
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 3
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 4
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 5
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 6
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 7
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 8
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 9
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 10
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 11
      "This is %s.\n" % lyrics.last(num).join(" ")
    when 12
      "This is %s.\n" % lyrics.last(num).join(" ")
    end

  end
end
