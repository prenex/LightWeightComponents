#ifndef SIMPLE_ADDER_SERVICE_IMPL_H
#define SIMPLE_ADDER_SERVICE_IMPL_H

#include "../AdderService.h"
class SimpleAdderServiceImpl : public AdderService {
public:
	SimpleAdderServiceImpl() {
		AdderService::registerAdderService(this);
	}
	virtual int add(int x, int y) {
		return x + y;
	}
};
// Creating the implementation ensures service reg.
// this will be included before the main, and run before that!
static SimpleAdderServiceImpl adderServiceImpl;

#endif
