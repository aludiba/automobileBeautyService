#import "BMBMGPUImageRGBOpeningFiltertv.h"
@implementation BMBMGPUImageRGBOpeningFiltertv
+ (BOOL)vTinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)yDinitwithradius:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
