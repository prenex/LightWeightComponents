// Includes of the interfacing modules
#define LWC_INTERFACING_MODULES
#include "components/AdderService.h"
#include "components/PrinterServices.h"
#include "components/MainControllerService.h"

#define LWC_IMPLEMENTATION_MODULES
#include "components/SimpleAdderServiceImpl/ComponentImpl.h"
// There can be multiple printer services (see interfacing module)
// Here we have two of them (one writes to stdout and other to file)
#include "components/SimplePrinterServiceImpl/ComponentImpl.h"
#include "components/FilePrinterServiceImpl/ComponentImpl.h"
#include "components/MainControllerServiceImpl/ComponentImpl.h"

int main() {
	// Run the entry service
	MainControllerService mainControllerService;
	return mainControllerService.run();
}
