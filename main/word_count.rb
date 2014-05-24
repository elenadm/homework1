module Words
  extend self

  def count(str)
    str.downcase.split(/\W+/).inject({}) { |result, i| result.update({i => 1}) { |key, old, new| old + new } }
  end
end
