#import "BMGPUImageSaturationFilterT.h"
@implementation BMGPUImageSaturationFilterT
+ (BOOL)yInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)fSetsaturationbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
