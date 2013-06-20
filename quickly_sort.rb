def sort(array)
  # return [] if array.empty?
  return array if array.size < 2
  left, right = array[1..-1].partition { |y| y <= array.first }
  sort(left) + [ array.first ] + sort(right)
end

# partition {| obj | block } → [ true_array, false_array ]
# Returns two arrays, the first containing the elements of enum for
# which the block evaluates to true, the second containing the rest

#设要排序的数组是A[0]……A[N-1]，首先任意选取一个数据（通常选用第1个数据）作为关键数据，
#然后将所有比它小的数都放到它前面，所有比它大的数都放到它后面，这个过程称为一趟快速排序。
#值得注意的是，快速排序不是一种稳定的排序算法，也就是说，多个相同的值的相对位置也许会在算法结束时产生变动。

#平均时间复杂度(nlog(n))

def quickly_sort(array)
	return array if array.size < 2
	key = array.first
	left, right = [], []
	array[1..-1].each { |x|
		if x <= key
			left << x
		else
			right << x
		end
	}
	quickly_sort(left) + [key] + quickly_sort(right)
end

puts quickly_sort([1,3,2,5,4,6,9,8,7,10,20,35,27])
