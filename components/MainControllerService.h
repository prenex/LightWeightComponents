#ifndef MAIN_CONTROLLER_SERVICE_H
#define MAIN_CONTROLLER_SERVICE_H

// Interfacing module's class
namespace MainController {
	class Service {
		/**
		 * Runs the main controller
		 *
		 * Function needs to be deleted to aid static compilation checks.
		 * Function is virtual only for override checking, but we never use vtbl
		 *  as the compiler will see we are never reaching this through pointers
		 *  or references, but directly! This way we might have waste in space
		 *  but no waste of runtime.
		 */
		virtual int run(int argc, char* argv[]) = 0;
	};

	// Here you might have DTO structs and stuff to interface to us...
}

#endif // MAIN_CONTROLLER_SERVICE_H
