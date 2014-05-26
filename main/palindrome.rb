module Palindrome
  extend self

  def palindrome?(str)
    str = str.downcase.gsub(/(\W|\d)/, "")
    str == str.reverse
  end

end
