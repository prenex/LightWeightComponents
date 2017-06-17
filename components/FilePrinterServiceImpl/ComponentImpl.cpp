// This could be in the header, but wanted to show how cpps work
// The components could have their own full sub-project structure
// in their directories with usual c++ code in them

// This two lines might look weird, but think about it!
// the implementation header needs the interfacing but
// gets it only if you include, also you need lwc2.h for
// providing you the template specialization so you need
// that too here!
#include "../PrinterService.h"
#include "../lwc2.h"
/* Is ensured by ../lwc2.h: #include "ComponentImpl.h" */

namespace FilePrinterServiceImpl {
	void ComponentImpl::print(int num) {
		FILE *pFile;
		pFile = fopen ("out.txt","w");
		if (pFile!=NULL) {
			fprintf(pFile, "Number: %d\n", num);
			fclose (pFile);
		}
	}
}
