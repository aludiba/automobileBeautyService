#import "BMBMGPUImageRGBOpeningFilterLD.h"
@implementation BMBMGPUImageRGBOpeningFilterLD
+ (BOOL)PRinit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)iCinitwithradius:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
