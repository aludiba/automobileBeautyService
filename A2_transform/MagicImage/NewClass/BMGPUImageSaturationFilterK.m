#import "BMGPUImageSaturationFilterK.h"
@implementation BMGPUImageSaturationFilterK
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)mSetsaturationbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
