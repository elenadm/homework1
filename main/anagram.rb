module Anagram
  extend self

  def anagrams(str)
    res = Hash[str.split(/\W+/).group_by { |w| w.to_s.downcase.split(//).sort }]
    res.values
  end

end

