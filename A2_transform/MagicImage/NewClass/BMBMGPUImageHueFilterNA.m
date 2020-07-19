#import "BMBMGPUImageHueFilterNA.h"
@implementation BMBMGPUImageHueFilterNA
+ (BOOL)PRinit:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)HXsethue:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
