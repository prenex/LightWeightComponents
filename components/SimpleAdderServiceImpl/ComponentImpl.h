#ifndef SIMPLE_ADDER_SERVICE_IMPL_H
#define SIMPLE_ADDER_SERVICE_IMPL_H

#include "../AdderService.h"
class SimpleAdderServiceImpl : public AdderService {
public:
	SimpleAdderServiceImpl() {
		AdderService::registerAdderService(this);
	}
	virtual int add(int x, int y);
};
// Creating the implementation ensures service reg.
// this will be included before the main, and run before that!
#ifdef LWC_IMPLEMENTATION_MODULES
static SimpleAdderServiceImpl adderServiceImpl;
#endif

#endif
