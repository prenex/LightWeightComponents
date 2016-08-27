#ifndef FILE_PRINTER_SERVICE_IMPL_H
#define FILE_PRINTER_SERVICE_IMPL_H

#include<cstdio>

#include "../PrinterServices.h"
class FilePrinterServiceImpl : public PrinterServices {
public:
	FilePrinterServiceImpl() {
		PrinterServices::registerPrinterService(this);
	}
	virtual void print(int num) {
		FILE *pFile;
		pFile = fopen ("out.txt","w");
		if (pFile!=NULL) {
			fprintf(pFile, "Number: %d\n", num);
			fclose (pFile);
		}
	}
};
// Creating the implementation ensures service reg.
// this will be included before the main, and run before that!
#ifdef LWC_IMPLEMENTATION_MODULES
static FilePrinterServiceImpl filePrinterServiceImpl;
#endif

#endif
