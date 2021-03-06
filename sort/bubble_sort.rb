# 冒泡排序算法的运作如下：
# 比较相邻的元素。如果第一个比第二个大，就交换他们两个。
# 对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对。在这一点，最后的元素应该会是最大的数。
# 针对所有的元素重复以上的步骤，除了最后一个。
# 持续每次对越来越少的元素重复上面的步骤，直到没有任何一对数字需要比较

#冒泡排序总的平均时间复杂度为O(n**2)


def bubble_sort(arr)
	for i in (0...arr.length)
		for j in (0...(arr.length-i-1))
			if arr[j+1] < arr[j]
				# tmp = arr[j+1]
				# arr[j+1] = arr[j]
				# arr[j] = tmp
				arr[j+1], arr[j] = arr[j], arr[j+1]
			end
		end
	end
	puts arr
end

a=[1,3,5,6,7,8,4,2,9,10]
bubble_sort(a)
