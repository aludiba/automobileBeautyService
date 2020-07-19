#import "BMBMGPUImageHueFilterNH.h"
@implementation BMBMGPUImageHueFilterNH
+ (BOOL)JRinit:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)aXsethue:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
