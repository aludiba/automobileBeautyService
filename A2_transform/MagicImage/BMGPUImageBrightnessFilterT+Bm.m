#import "BMGPUImageBrightnessFilterT+Bm.h"
@implementation BMGPUImageBrightnessFilterT (Bm)
+ (BOOL)sinitBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)gSetbrightnessBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
