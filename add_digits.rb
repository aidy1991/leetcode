# @param {Integer} num
# @return {Integer}
def add_digits(num)
  def iter str
    return str.to_i if str.length == 1
    sum = 0
    str.each_char do |s|
      sum += s.to_i
    end
    return iter sum.to_s
  end

  iter num.to_s
end
