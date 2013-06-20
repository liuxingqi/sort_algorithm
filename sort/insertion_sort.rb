# 一般来说，插入排序都采用in-place在数组上实现。具体算法描述如下：
# 从第一个元素开始，该元素可以认为已经被排序
# 取出下一个元素，在已经排序的元素序列中从后向前扫描
# 如果该元素（已排序）大于新元素，将该元素移到下一位置
# 重复步骤3，直到找到已排序的元素小于或者等于新元素的位置
# 将新元素插入到该位置后
# 重复步骤2~5


#平均时间复杂度O(n**2)


def insertion_sort(array)
	return array if array.length < 2
	for i in (1...array.length)
		tmp = array[i]
		j=i-1
		while j >= 0 && array[j] > tmp do
			array[j+1] = array[j]
			j-=1
		end
		array[j+1] = tmp
	end
	array
end


puts insertion_sort([2,1,5,3,4,6,7,9,8,10])