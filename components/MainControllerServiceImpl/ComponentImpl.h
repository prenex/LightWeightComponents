#ifndef MAIN_CONTROLLER_SERVICE_IMPL_H
#define MAIN_CONTROLLER_SERVICE_IMPL_H

#include "../AdderService.h"
#include "../PrinterServices.h"
#include "../MainControllerService.h"
class MainControllerServiceImpl : public MainControllerService {
private:
	AdderService adder;
	PrinterServices printers;
public:
	MainControllerServiceImpl() {
		MainControllerService::registerMainControllerService(this);
	}
	virtual int run() {
		int result = adder.add(5, 10);
		printers.print(result);

		// This will be the retval of main too
		return 0;
	}
};
// Creating the implementation ensures service reg.
// this will be included before the main, and run before that!
static MainControllerServiceImpl mainControllerServiceImpl;

#endif
