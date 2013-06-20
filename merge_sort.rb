#归并操作(merge)，也叫归并算法，指的是将两个已经排序的序列合并成一个序列的操作。归并排序算法依赖归并操作。
# 归并操作的过程如下：
# 申请空间，使其大小为两个已经排序序列之和，该空间用来存放合并后的序列
# 设定两个指针，最初位置分别为两个已经排序序列的起始位置
# 比较两个指针所指向的元素，选择相对小的元素放入到合并空间，并移动指针到下一位置
# 重复步骤3直到某一指针达到序列尾
# 将另一序列剩下的所有元素直接复制到合并序列尾


def merge(left,right)
	final = []
	until left.empty? or right.empty?
		final << (left.first < right.first ? left.shift : right.shift)
	end
	final + left + right
end


def mergeSort(array)
        return array if array.size < 2
        left = array.first(array.size/2)
        right = array.last(array.size - array.size/2)
        merge(mergeSort(left), mergeSort(right))
end

puts mergeSort([10,4,3,2,5,6,8,7,9,1])