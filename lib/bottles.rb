class Bottles
  def verse(number)
    case number
    when 2
    <<-VERSE
    2 bottles of beer on the wall, 2 bottles of beer.
    Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    when 1
    <<-VERSE
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    else
    <<-VERSE
    #{number} bottles of beer on the wall, #{number} bottles of beer.
    Take one down and pass it around, #{number-1} bottles of beer on the wall.
    VERSE
    end
  end
end














# class Bottles
#   def song
#     verses(99,0)
#   end
#
#   def verses(starting,ending)
#     starting.downto(ending).map do |number|
#       verse(number)
#     end.join("\n")
#   end
#
#   def verse(number)
#     case number
#     when 0
#       "No more bottles of beer on the wall, " +
#       "no more bottles of beer.\n" +
#       "Go to the store and buy some more, " +
#       "99 bottles of beer on the wall.\n"
#     when 1
#       "#{number} bottle of beer on the wall, " +
#       "#{number} bottle of beer.\n" +
#       "Take it down and pass it around, " +
#       "no more bottles of beer on the wall.\n"
#     when 2
#       "#{number} bottles of beer on the wall, " +
#       "#{number} bottles of beer.\n" +
#       "Take one down and pass it around, " +
#       "#{number - 1} bottle of beer on the wall.\n"
#     else
#       "#{number} bottles of beer on the wall, " +
#       "#{number} bottles of beer.\n" +
#       "Take one down and pass it around, " +
#       "#{number - 1} bottles of beer on the wall.\n"
#     end
#   end
# end
