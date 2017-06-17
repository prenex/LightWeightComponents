// This ifdef guard makes the pre-processor avoid the body of this file
// except if the first guard here is defined (which means someone included the
// interfacing header). This ensures that we can list all the implementation
// headers in the lwc2.h file and just include that everywhere and this
// automagically includes the right implementation headers for you in your file
// whilst you only directly include lwc2.h and the interfacing module *.h
//
// This is what ensures loose coupling in that way that the plugins can be changed
// easily by modifying the lwc2.h "descriptor" file.
// Rem.: Aggregate components can include interfacings on their own and include the
// implementations too for delegating parts of the work...
#ifdef PRINTER_SERVICE_H
// Of course we need usual include guards too, to avoid the usual problems too!
#ifndef FILE_PRINTER_SERVICE_IMPL_H
#define FILE_PRINTER_SERVICE_IMPL_H

// Because we implement this interfacing module, we need to include that too
#include "../PrinterService.h"

// Used by cpps...
#include<cstdio>

namespace FilePrinterServiceImpl {
	class ComponentImpl : public Printer::Service {
	public:
		ComponentImpl() { }
		virtual void print(int num);
	};
}
// Specializing lwc2_inject with the implementations service yields a class 
// that just inherits the above implementation and do not do anything else.
// This way if you write lwc2_inject<xyz::Service>; you get a class
// that is basically just a zyx::ComponentImpl disguised as the
// lwc2_inject template specialization :-)
//
// To enable aggregation of components, we only declare this, when the aggregator is NOT
// set. This way you need to set this in the beginning of your aggregator component and
// unset in the end of that implementation header - right before its similar line.
// This only supports one possible levels of aggregation, but is better than nothing and
// in really bad cases you can name your ifndef differently to do multi-level stuff, just
// I advise against that architecture anyways...
#ifndef PRINTER_SERVICE_INJECT
#define PRINTER_SERVICE_INJECT
template<> class lwc2_inject<Printer::Service> : public FilePrinterServiceImpl::ComponentImpl {};
#endif // PRINTER_SERVICE_INJECT

#endif // -FILE_PRINTER_SERVICE_IMPL_H
#endif // +PRINTER_SERVICE_H
