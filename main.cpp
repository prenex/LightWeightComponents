#include<cstdio>

/* Including the main framework */

/* Declarations of interfacing modules */
class AdderService {
private:
	static AdderService* adderServiceImpl;
public:
	virtual int add(int x, int y) {
		if(adderServiceImpl != nullptr) {
			return adderServiceImpl->add(x, y);
		}
	}
	
	static void registerAdderService(AdderService* impl) {
		adderServiceImpl = impl;
	}
};
AdderService *AdderService::adderServiceImpl;

/* Implementation components */
class AdderServiceImpl : public AdderService {
public:
	AdderServiceImpl() {
		AdderService::registerAdderService(this);
	}
	virtual int add(int x, int y) {
		return x + y;
	}
};
static AdderServiceImpl adderServiceImpl;

int main() {
	AdderService adder;
	int result = adder.add(5, 10);
	printf("Result: %d\n", result);
	return 0;
}
