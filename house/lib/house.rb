class House

  attr_reader :pieces

  def initialize(pieces = Verse.new.lyric)
    @pieces = pieces
  end

  def recite
    (1..pieces.length).map {|i| line(i)}.join("\n")
  end

  def line(number)
    "This is %s.\n" % pieces.last(number).join(' ')
  end
end
#----------
class Verse

  attr_reader :pieces

  PIECES = [
    ['the horse and the hound and the horn', 'that belonged to'],
    ['the farmer', 'sowing his corn that kept'],
    ['the rooster', 'that crowed in the morn that woke'],
    ['the priest', 'all shaven and shorn that married'],
    ['the man all', 'tattered and torn that kissed'],
    ['the maiden', 'all forlorn that milked'],
    ['the cow', 'with the crumpled horn that tossed'],
    ['the dog', 'that worried'],
    ['the cat', 'that killed'],
    ['the rat', 'that ate'],
    ['the malt', 'that lay in'],
    ['the house', 'that Jack built'],
  ]

  def initialize(pieces = PIECES)
    @pieces = pieces
  end

  def lyric
    pieces.map { |subject, predicate| "#{subject} #{predicate}" }
  end
end
#----------
class RandomVerse < Verse

  def pieces
    super.transpose.map { |pieces| pieces.shuffle }.transpose
  end

end
