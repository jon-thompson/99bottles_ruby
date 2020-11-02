class Bottles
  def verse(numberOfBottles)
    return buy_more if numberOfBottles == 0
    nextNumberOfBottles = numberOfBottles - 1 
    "#{bottles(numberOfBottles)} of beer on the wall, " +
    "#{bottles(numberOfBottles)} of beer.\n" +
    (nextNumberOfBottles > 0 ? more(nextNumberOfBottles) : no_more)
  end

  def verses(a, b)
    (b..a).to_a.reverse.map { |x| verse(x) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def buy_more
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def more(nextNumberOfBottles)
    "Take one down and pass it around, " +
    "#{bottles(nextNumberOfBottles)} of beer on the wall.\n"
  end

  def no_more
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def bottles(n)
    "#{n} bottle#{n == 1 ? "" : "s"}"
  end
end