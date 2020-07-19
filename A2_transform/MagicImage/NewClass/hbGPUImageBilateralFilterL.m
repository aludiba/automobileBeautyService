#import "hbGPUImageBilateralFilterL.h"
@implementation hbGPUImageBilateralFilterL
+ (BOOL)Hinit:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)vSetdistancenormalizationfactor:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
