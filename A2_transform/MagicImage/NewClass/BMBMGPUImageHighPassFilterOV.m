#import "BMBMGPUImageHighPassFilterOV.h"
@implementation BMBMGPUImageHighPassFilterOV
+ (BOOL)RAinitbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)QDsetfilterstrengthbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)CPfilterstrengthbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
