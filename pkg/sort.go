package pkg

type sort struct{}

func (p sort) Insert(list []int) {
	for first, last := 1, len(list); first < last; first++ {
		p.linearInsert(list[:first+1], list[first])
	}
}

// list = [1 3 5 ... val]
func (p sort) linearInsert(list []int, val int) {
	var tail int
	for tail = len(list) - 1; tail > 0 && val < list[tail-1]; tail-- {
		list[tail] = list[tail-1]
	}
	list[tail] = val
}

func (p sort) Merge(list []int) []int {
	first, last := 0, len(list)
	if first >= last-1 {
		return list
	}
	middle := (first + last) / 2
	result1 := p.Merge(list[:middle])
	result2 := p.Merge(list[middle:])
	result := p.merge(result1, result2)
	return result
}

func (p sort) merge(list1, list2 []int) []int {
	first1, last1 := 0, len(list1)
	first2, last2 := 0, len(list2)
	result := make([]int, last1+last2)
	pos := 0
	for first1 < last1 && first2 < last2 {
		if list1[first1] < list2[first2] {
			result[pos] = list1[first1]
			first1++
		} else {
			result[pos] = list2[first2]
			first2++
		}
		pos++
	}
	if first1 != last1-1 {
		copy(result[pos:], list1[first1:])
	}
	if first2 != last2-1 {
		copy(result[pos:], list2[first2:])
	}
	return result
}
