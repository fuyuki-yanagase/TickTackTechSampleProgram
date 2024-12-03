#include <iostream>
#include <vector>
using namespace std;

vector<int> stalin_sort_desc(const vector<int> &arr)
{
	if (arr.size() == 0)
		return vector<int>();

	vector<int> doushi{arr[0]}; // æ“ª‚ÍOK
	for (int i = 1; i < arr.size(); ++i)
	{
		if (doushi.back() <= arr[i])
			continue; // l´‚³‚ê‚é
		doushi.emplace_back(arr[i]);
	}

	return doushi;
}

int main()
{
	vector<int> kyaku{60, 83, 76, 45, 70, 91, 37, 58, 94, 22};
	vector<int> result = stalin_sort_desc(kyaku);

	for (int i = 0; i < result.size(); ++i)
		cout << result[i] << " ";
}