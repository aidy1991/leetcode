# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  i = 0
  nums.each_with_index do |num, index|
    if num != 0
      nums[i] = num
      i += 1
    end
  end
  (i...nums.length).each do |index|
    nums[index] = 0
  end
end

a = [0, 1, 0, 3, 12]
p a
move_zeroes a
p a
