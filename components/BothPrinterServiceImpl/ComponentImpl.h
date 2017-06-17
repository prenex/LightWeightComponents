// This ifdef guard makes the pre-processor avoid the body of this file
// except if ADDER_SERVICE_H is defined (which means someone included the
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
#ifndef BOTH_PRINTER_SERVICE_IMPL_H
#define BOTH_PRINTER_SERVICE_IMPL_H

/* Ensured by above guards: #include "../AdderService.h" */

// ////////////////// //
// AGGREGATION TRICKS //
// Tricks for not letting aggregates specialize the lwc2_inject - but still including the files:
#ifndef PRINTER_SERVICE_INJECT
#define PRINTER_SERVICE_INJECT // this prohibits them to do so!
// Rem.: This works only because we are "header-only" when doing aggregators
//       and of course because we also have the #ifdef PRINTER_SERVICE_H !!!
#include "../FilePrinterServiceImpl/ComponentImpl.h"
#include "../SimplePrinterServiceImpl/ComponentImpl.h"
#undef PRINTER_SERVICE_INJECT
#endif // -PRINTER_SERVICE_INJECT
// AGGREGATION TRICKS //
// ////////////////// //

// Best is that we put our module implementations in namespaces to avoid name clashes
namespace BothPrinterServiceImpl {
	// Naming the component implementation ComponentImpl seems like a good
	// practice too so it can be the same everywhere
	class ComponentImpl : public Printer::Service {
	private:
		// "Injecting the implementations" - to make them aggregates of us
		FilePrinterServiceImpl::ComponentImpl filePrinter;
		SimplePrinterServiceImpl::ComponentImpl simplePrinter;
	public:
		// The lwc2_inject will create using this in most cases!
		// Rem.: Actually you can provide parameters in the time
		// of instantiation, but in c++ it is hard to tell what
		// the interface is for that constructor-parametrization
		// because you can't tell it from looking at Adder::Service...
		ComponentImpl() { }

		// Just implements the add function - by delegating!
		inline void print(int n) override {
			// Delegate calls to all of them!
			simplePrinter.print(n);
			filePrinter.print(n);
		}
	};
}

// Specializing lwc2_inject with the adder service yields a class 
// that just inherits the above implementation and do not do anything else.
// This way if you write auto adder = lwc2_inject<Adder::Service>; you get a class
// that is basically just a SimpleAdderServiceImpl::ComponentImpl disguised as the
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
template<> class lwc2_inject<Printer::Service> : public BothPrinterServiceImpl::ComponentImpl {};
#endif // -PRINTER_SERVICE_INJECT

#endif // -BOTH_PRINTER_SERVICE_IMPL_H
#endif // +PRINTER_SERVICE_H
