#ifndef ADDER_SERVICE_H
#define ADDER_SERVICE_H

// Interfacing module's class
class AdderService {
private:
	static AdderService* adderServiceImpl;
public:
	virtual int add(int x, int y) {
		if(adderServiceImpl != nullptr) {
			return adderServiceImpl->add(x, y);
		}
	}
	
	static void registerAdderService(AdderService* impl) {
		adderServiceImpl = impl;
	}
};
// The variable should be defined in some cpp file
// it will be in the cpp that includes this first!
// (I know... it's not the most clean approach but whatever)
AdderService *AdderService::adderServiceImpl;

#endif