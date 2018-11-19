class Bottles

# My 1st Attempt
  def bottle_singular_plural(count)
    if count == 1
      "#{count} bottle of beer on the wall, #{count} bottle of beer."
    elsif count == 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{count} bottles of beer on the wall, #{count} bottles of beer."
    end
  end

  def remaining_beers(count)
    if count == 1
      "Take it down and pass it around, no more bottles of beer on the wall."
    elsif count == 2
      "Take one down and pass it around, #{count-1} bottle of beer on the wall."
    elsif count == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, #{count-1} bottles of beer on the wall."
    end
  end

  def verse(count)
    <<~STRING
    #{bottle_singular_plural(count)}
    #{remaining_beers(count)}
    STRING
  end

  def verses(countA,countB)
    <<~STRING
    #{bottle_singular_plural(countA)}
    #{remaining_beers(countA)}

    #{bottle_singular_plural(countB)}
    #{remaining_beers(countB)}
    STRING
  end

# End My 1st Attempt




end
