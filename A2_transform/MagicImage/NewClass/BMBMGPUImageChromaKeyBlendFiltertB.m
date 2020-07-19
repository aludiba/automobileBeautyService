#import "BMBMGPUImageChromaKeyBlendFiltertB.h"
@implementation BMBMGPUImageChromaKeyBlendFiltertB
+ (BOOL)RFinit:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)GVsetcolortoreplaceredxgreenqblue:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)kHsetthresholdsensitivity:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)MBsetsmoothing:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
