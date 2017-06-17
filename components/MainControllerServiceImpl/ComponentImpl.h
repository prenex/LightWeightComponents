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
#ifdef MAIN_CONTROLLER_SERVICE_H
// Of course we need usual include guards too, to avoid the usual problems too!
#ifndef MAIN_CONTROLLER_SERVICE_IMPL_H
#define MAIN_CONTROLLER_SERVICE_IMPL_H

// When a component uses other, we can just include the corresponding
// interfacing headers. Implementation headers need not be included.
// Only the implementation headers should lwc2_inject<..> components
// but interfacing headers might include other interfacing headers even
// though it is not preferred because of compilation times might grow.
#include "../AdderService.h"
#include "../PrinterService.h"
#include "../lwc2.h"	// this should be the last include always!

/* Is ensured: #include "../MainControllerService.h" */

namespace MainControllerServiceImpl {
	class ComponentImpl : public MainController::Service {
	private:
		// Injection examples
		// It basically injects the proper class and instantiates an object.
		// This way the method of operation resembles that of stateless ejb3s
		// as all injection points get their own implementations. When state-ful
		// operation is what is wanted, one can hande that manually through
		// specific facades that hide the same data nevertheless what object you
		// call the methods from (manual proxy-ing).
		lwc2_inject<Adder::Service> adder;
		lwc2_inject<Printer::Service> printer;
	public:
		// Starts the main controller - returns return value.
		// should be called on entry point.
		virtual int run(int argc, char* argv[]) override;
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
#ifndef MAIN_CONTROLLER_SERVICE_INJECT
#define MAIN_CONTROLLER_SERVICE_INJECT
template<> class lwc2_inject<MainController::Service> : public MainControllerServiceImpl::ComponentImpl {};
#endif // MAIN_CONTROLLER_SERVICE_INJECT

#endif // -MAIN_CONTROLLER_SERVICE_IMPL_H
#endif // +MAIN_CONTROLLER_SERVICE_H
