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
#ifdef ADDER_SERVICE_H
// Of course we need usual include guards too, to avoid the usual problems too!
#ifndef SIMPLE_ADDER_SERVICE_IMPL_H
#define SIMPLE_ADDER_SERVICE_IMPL_H

/* Ensured by above guards: #include "../AdderService.h" */

// Best is that we put our module implementations in namespaces to avoid name clashes
namespace SimpleAdderServiceImpl {
	// Naming the component implementation ComponentImpl seems like a good
	// practice too so it can be the same everywhere
	class ComponentImpl : public Adder::Service {
	public:
		// The lwc2_inject will create using this in most cases!
		// Rem.: Actually you can provide parameters in the time
		// of instantiation, but in c++ it is hard to tell what
		// the interface is for that constructor-parametrization
		// because you can't tell it from looking at Adder::Service...
		ComponentImpl() { }

		// Just implements the add function - see cpp file
		virtual int add(int x, int y) override;
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
#ifndef ADDER_SERVICE_INJECT
#define ADDER_SERVICE_INJECT
template<> class lwc2_inject<Adder::Service> : public SimpleAdderServiceImpl::ComponentImpl {};
#endif // -ADDER_SERVICE_INJECT

#endif // -SIMPLE_ADDER_SERVICE_IMPL_H
#endif // +ADDER_SERVICE_H
