from bisect import bisect_left

def stalin_sort_desc(arr: list) -> list:
	doushi = arr[:1]
	for a in arr[1:]:
		if doushi[-1] <= a: continue
		doushi.append(a)

	return doushi		

def main():
	n, m = map(int, input().split())
	arr = list(map(int, input().split()))
	brr = list(map(int, input().split()))

	# 値 → 席 の変換テーブル
	v2i = {}
	for index, value in enumerate(arr[::-1]):
		v2i[value] = (n - index)

	# スターリンソート
	doushi = [-d for d in stalin_sort_desc(arr)]

	for b in brr:
		index = bisect_left(doushi, -b)
		if index < len(doushi):
			value = doushi[index] * -1
			print(v2i[value])
		else:
			print(-1)
		
if __name__ == "__main__":
	main()
