// Nothing should be here - really...
// Except for things used in main maybe
#include<cstdio>

/* Includes of the interfacing modules */
#include "components/AdderService.h"

/* Includes of the Implementation components */
#include "components/SimpleAdderServiceImpl/ComponentImpl.h"

int main() {
	// In main, I just call one of the components
	// that serve as entry points semantically...
	AdderService adder;
	int result = adder.add(5, 10);
	printf("Result: %d\n", result);
	return 0;
}
