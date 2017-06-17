#ifndef PRINTER_SERVICE_H
#define PRINTER_SERVICE_H

// An interfacing module
namespace Printer {
	// Service interface
	class Service {
		/**
		 * Prints a number
		 *
		 * Function needs to be deleted to aid static compilation checks.
		 * Function is virtual only for override checking, but we never use vtbl
		 *  as the compiler will see we are never reaching this through pointers
		 *  or references, but directly! This way we might have waste in space
		 *  but no waste of runtime.
		 */
		virtual void print(int num) = 0;
	};

	// Here you might have DTO structs and stuff to interface to us...
}

#endif //PRINTER_SERVICE_H
