module Words
  extend self

  def count(str)
    Hash[str.downcase.split(/\W+/).group_by { |w| w }.map { |k,v| [k, v.size] }]
  end
end
