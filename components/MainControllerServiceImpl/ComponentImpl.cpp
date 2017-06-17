// This could be in the header, but wanted to show how cpps work
// The components could have their own full sub-project structure
// in their directories with usual c++ code in them

// This two lines might look weird, but think about it!
// the implementation header needs the interfacing but
// gets it only if you include, also you need lwc2.h for
// providing you the template specialization so you need
// that too here!
#include "../MainControllerService.h"
#include "../lwc2.h"
/* Is ensured by ../lwc2.h: #include "ComponentImpl.h" */

namespace MainControllerServiceImpl {
	int ComponentImpl::run(int argc, char* argv[]) {
		// Use injected components here
		// This will result in calls for the currently set up components!
		int result = adder.add(5, 10);
		printer.print(result);

		// This will be the retval of main too
		return 0;
	}
}
