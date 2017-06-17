#include "MainControllerService.h"
#include "lwc2.h" // this is always the last include!

int main(int argc, char* argv[]) {
	// Inject the controller service
	lwc2_inject<MainController::Service> mainControllerService;
	// Run the controller service
	return mainControllerService.run(argc, argv);
}
