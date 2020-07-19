#import "BMGPUImageSaturationFiltere+BmBm.h"
@implementation BMGPUImageSaturationFiltere (BmBm)
+ (BOOL)pinitBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)LSetsaturationBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
