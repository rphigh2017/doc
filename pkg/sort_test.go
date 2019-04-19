package pkg

import (
	"fmt"
	"testing"
)

func TestSortInsert(t *testing.T) {
	list := []int{1, 3, 2, 5, 4, 0}
	Sort.Insert(list)
	fmt.Println(list)
}

func TestSortMerge(t *testing.T) {
	list1 := []int{1, 3, 5, 7, 9}
	list2 := []int{2, 4, 6, 8, 10, 12, 20}
	fmt.Println(Sort.merge(list1, list2))

	list := []int{1, 3, 5, 7, 9, 2, 4, 6, 8, 10}
	fmt.Println(Sort.Merge(list))
}
