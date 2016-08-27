#ifndef MAIN_CONTROLLER_SERVICE_H
#define MAIN_CONTROLLER_SERVICE_H

// Interfacing module's class
class MainControllerService {
private:
	static MainControllerService* mainControllerServiceImpl;
public:
	// Return the value that should be returned by main
	virtual int run() {
		if(mainControllerServiceImpl != nullptr) {
			return mainControllerServiceImpl->run();
		} else {
			// Big error!
			return 1;
		}
	}
	
	static void registerMainControllerService(MainControllerService* impl) {
		mainControllerServiceImpl = impl;
	}
};
// The variable should be defined in some cpp file
// it will be in the cpp that includes this first!
// (I know... it's not the most clean approach but whatever)
MainControllerService *MainControllerService::mainControllerServiceImpl;

#endif
