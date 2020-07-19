#import "BMBMBMGPUImageRGBOpeningFilterLDS.h"
@implementation BMBMBMGPUImageRGBOpeningFilterLDS
+ (BOOL)XPrinit:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)EIcinitwithradius:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
