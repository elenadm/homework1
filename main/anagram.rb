module Anagram
  extend self

  def anagrams(str)
    Hash[str.split(/\W+/).group_by { |w| w.downcase.split(//).sort }].values
  end

end

