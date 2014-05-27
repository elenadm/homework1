module Anagram
  extend self

  def anagrams(str)
    Hash[str.split(/\W+/).group_by { |w| w.to_s.downcase.split(//).sort }].values
  end

end

