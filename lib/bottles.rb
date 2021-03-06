class Bottles

  def song
    verses(99,0)
  end

  def container(number)
    BottleNumber.new(number).container
  end

  def quantity(number)
    BottleNumber.new(number).quantity
  end

  def action(number)
    BottleNumber.new(number).action
  end

  def successor(number)
    BottleNumber.new(number).successor
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun
  end


  def verse(number)
    <<-VERSE
    #{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.
    #{action(number)} #{quantity(successor(number))} #{container(successor(number))} of beer on the wall.
    VERSE
  end

  def verses(starting, ending)
    starting.downto(ending).collect { |i| verse(i)}.join("\n")
  end
end

class BottleNumber

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def quantity
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def action
    if number === 0
      "Go to the store and buy some more,"
    else
      "Take #{pronoun} down and pass it around,"
    end
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end


end
