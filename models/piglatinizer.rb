class PigLatinizer<Sinatra::Base
  attr_reader :text

  def initialize(text)
    @text=text

  end

  def split
    @text.split(" ").collect do |word|
      if word.start_with?('a','e','i','o','u')
        "#{word}ay"
      else
        word.split("")
        "#{word[1..-1]}#{word[0]}ay"
      end
    end
  end

  def pig_latinize
    self.split.join(" ")
  end



end
