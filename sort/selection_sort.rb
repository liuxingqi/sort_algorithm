# 选择排序(Selection sort)是一种简单直观的排序算法。它的工作原理如下:
# 首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置，
# 然后，再从剩余未排序元素中继续寻找最小（大）元素，然后放到已排序序列的末尾。
# 以此类推，直到所有元素均排序完毕


#平均时间复杂度O(n**2)

def selection_sort(array)
	return array if array.length < 2
	for i in (0...array.length)
		max_index = i
		for j in (i+1...array.length)
		    max_index = j if array[max_index] < array [j]			    
		end
	    array[max_index], array[i] = array[i], array[max_index] if max_index != i
	end
	array
end

puts selection_sort([1,3,2,6,5,7,9,8,4,10])
