#import "hbGPUImageRGBOpeningFilterA.h"
@implementation hbGPUImageRGBOpeningFilterA
+ (BOOL)sinit:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)PInitwithradius:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
