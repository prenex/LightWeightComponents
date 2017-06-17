// This could be in the header, but wanted to show how cpps work
// The components could have their own full sub-project structure
// in their directories with usual c++ code in them

// This two lines might look weird, but think about it!
// the implementation header needs the interfacing but
// gets it only if you include, also you need lwc2.h for
// providing you the template specialization so you need
// that too here!
#include "../AdderService.h"
#include "../lwc2.h"
/* Is ensured by ../lwc2.h: #include "ComponentImpl.h" */

namespace SimpleAdderServiceImpl {
	// Finally here is the implementation
	int ComponentImpl::add(int x, int y) {
		return x + y;
	}
}
