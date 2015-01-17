#import <Foundation/Foundation.h>
#import "DDUnitConversion.h"

int main (int argc, const char * argv[]) {
    @autoreleasepool {
    
        DDUnitConverter *c = [DDUnitConverter velocityUnitConverter];
        
        NSNumber * value = [c convertNumber:[NSNumber numberWithInt:100]
                                   fromUnit:DDVelocityUnitMilesPerHour
                                     toUnit:DDVelocityUnitFurlongsPerMicrofortnight];
        NSLog(@"%@", value);
        
	c = [DDUnitConverter currencyUnitConverter];
	
        value = [c convertNumber:[NSNumber numberWithInt:1] 
                        fromUnit:DDCurrencyUnitNorwegianKrone 
                          toUnit:DDCurrencyUnitUSDollar];
	NSLog(@"%@", value);
	
    }
    return 0;
}
