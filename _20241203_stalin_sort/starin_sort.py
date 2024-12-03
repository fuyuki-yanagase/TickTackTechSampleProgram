def stalin_sort_desc(arr: list) -> list:
	doushi = arr[:1]
	for a in arr[1:]:
		if doushi[-1] <= a: continue
		doushi.append(a)
	
	return doushi

print(stalin_sort_desc([60, 83, 76, 45, 70, 91, 37, 58, 94, 22]))