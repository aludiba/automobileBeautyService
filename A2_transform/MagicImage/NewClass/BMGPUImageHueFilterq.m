#import "BMGPUImageHueFilterq.h"
@implementation BMGPUImageHueFilterq
+ (BOOL)Einit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)YSethue:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
