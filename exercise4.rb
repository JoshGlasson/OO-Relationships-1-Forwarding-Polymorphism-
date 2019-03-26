class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def to(scrambler)
    return scrambler.scramble(@contents)
  end
end

class AdvancingCharsScramble
  def initialize(steps)
    @steps = steps
  end

  def scramble(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    contents = scrambled_chars.join
    return contents
  end
end

class UnscrambleAdvancingCharsScramble
  def initialize(steps)
    @steps = steps
  end

  def scramble(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord - @steps).chr
    end
    contents = scrambled_chars.join
    return contents
  end
end

class Reverse
  def scramble(contents)
    contents = contents.reverse
    return contents
  end
end

class UnscrambleReverse
  def scramble(contents)
    contents = contents.reverse
    return contents
  end
end

def entry(contents)
  ScrambledDiary.new(contents)
end

def scramble_by_advancing_chars(steps)
  AdvancingCharsScramble.new(steps)
end

def unscramble_by_advancing_chars(steps)
  UnscrambleAdvancingCharsScramble.new(steps)
end

def scramble_by_reversing_chars
  Reverse.new
end

def unscramble_by_reversing_chars
  UnscrambleReverse.new
end
