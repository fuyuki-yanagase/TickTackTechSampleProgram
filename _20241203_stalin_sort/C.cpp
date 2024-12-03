#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;
typedef pair<int, int> pii;

vector<pii> stalin_sort_desc(const vector<int> &arr)
{
	if (arr.empty())
		return vector<pii>();

	vector<pii> doushi{pii(arr[0], 1)}; // æ“ª‚ÍOK
	for (int i = 1; i < arr.size(); ++i)
	{
		if (doushi.back().first <= arr[i])
			continue; // l´‚³‚ê‚é
		doushi.emplace_back(pii(arr[i], i + 1));
	}

	return doushi;
}

int main()
{
	int n, m;
	cin >> n >> m;
	vector<int> arr(n), brr(m);

	for (int i = 0; i < n; ++i)
		cin >> arr[i];
	for (int i = 0; i < m; ++i)
		cin >> brr[i];

	vector<pii> doushi = stalin_sort_desc(arr);

	for (int b : brr)
	{
		// õi‚Ì”ü–¡‚µ‚³ˆÈ‰º‚Ì”üH“x‚Élower_bound
		auto it = lower_bound(doushi.begin(), doushi.end(), b, [](const pii &a, int b)
							  { return a.first > b; });
		cout << (it != doushi.end() ? (*it).second : -1) << endl;
	}
}