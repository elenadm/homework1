module Palindrome
  extend self

  def palindrome?(str)
    str = str.downcase.gsub(/(\W|\d)/, "")
    str.gsub(str.reverse, "true").include?("true")
  end
end
