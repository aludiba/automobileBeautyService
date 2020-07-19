#import "BMBMGPUImageSaturationFilterTd.h"
@implementation BMBMGPUImageSaturationFilterTd
+ (BOOL)GYinitbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)aFsetsaturationbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
