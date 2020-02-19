class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
    words = phrase.split(" ")
    new_phrase = ""

    words.each do |word|
      length = word.length
      if !is_consonant(word[0])
        word += "w"
      else
        i = 0
        while is_consonant(word[0]) && i < length do #AND i<word.length
          word += word.slice!(0)
          i += 1
        end
      end
      word += "ay"
      new_phrase += "#{word} "
    end

    new_phrase.chop
  end

  def is_consonant(letter)
    case letter
    when "a"
      false
    when "e"
      false
    when "i"
      false
    when "o"
      false
    when "u"
      false
    when "A"
      false
    when "E"
      false
    when "I"
      false
    when "O"
      false
    when "U"
      false
    else
      true
    end
  end
end