# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  h = {}
  nums.each do |n|
    (h.has_key? n) ? (h[n] += 1) : (h[n] = 1)
  end

  h.each_pair do |k, v|
    return k if v == 1
  end
end
