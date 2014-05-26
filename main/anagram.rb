module Anagram
  extend self

  def anagrams(str)
    input = Hash[str.split(/\W+/).group_by { |w| w }].collect { |k, v| [k.to_s.split(//).sort, v] }
    res = Hash.new
    input.each do |key, v|
      if !res.has_key?(key)
        res[key] = v
      else
        res[key] = res[key].push(v[0])
      end
    end
    res.values
  end
end

