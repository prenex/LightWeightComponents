// Includes of the interfacing modules
#include "components/AdderService.h"
#include "components/PrinterServices.h"

// Includes of the Implementation components
#include "components/SimpleAdderServiceImpl/ComponentImpl.h"
// There can be multiple printer services (see interfacing module)
#include "components/SimplePrinterServiceImpl/ComponentImpl.h"

int main() {
	// In main, I just call one of the components
	// that serve as entry points semantically...
	AdderService adder;
	PrinterServices printerServices;
	int result = adder.add(5, 10);
	printerServices.print(result);

	return 0;
}
