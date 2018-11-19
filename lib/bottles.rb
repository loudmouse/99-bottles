class Bottles

  attr_reader :of_what, :on_what

  def initialize
    @of_what = "of beer"
    @on_what = "on the wall"
  end

  def pluralize(n)
    if n != 1
      return 's'
    end
  end

  # the song method sends the verses messages to the implicit receiver (self), passing it two arguments.
  def song
    verses(99, 0)
  end

  def verses(hi,lo)
    hi.downto(lo).map {|n| verse(n) }.join("\n")
  end

  def verse(n)
    "#{n == 0 ? 'No more' : n} bottle#{pluralize(n)}" +
    " #{of_what} #{on_what}, " +
    "#{n == 0 ? 'no more' : n} bottle#{pluralize(n)} #{of_what}.\n" +
    "#{n > 0 ? "Take #{n > 1 ? 'one' : 'it'} down and pass it around"
    : "Go to the store and buy some more"}, " +
    "#{n-1 < 0 ? 99 : n-1 == 0 ? 'no more' : n-1} bottle#{pluralize(n-1)}"+ " #{of_what} #{on_what}.\n"
  end
end
