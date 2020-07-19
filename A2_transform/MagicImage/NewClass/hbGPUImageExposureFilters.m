#import "hbGPUImageExposureFilters.h"
@implementation hbGPUImageExposureFilters
+ (BOOL)dinit:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)tSetexposure:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
