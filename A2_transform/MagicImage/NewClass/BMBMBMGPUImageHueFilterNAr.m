#import "BMBMBMGPUImageHueFilterNAr.h"
@implementation BMBMBMGPUImageHueFilterNAr
+ (BOOL)GPrinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)NHxsethue:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
