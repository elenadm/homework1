module Words
  extend self

  def count(str)
    str.downcase.split(/\W+/).inject(Hash.new(0)) { |count, word| count[word] += 1; count }
  end
end
