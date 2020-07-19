#import "BMGPUImageChromaKeyBlendFiltert.h"
@implementation BMGPUImageChromaKeyBlendFiltert
+ (BOOL)finit:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)VSetcolortoreplaceredxGreenqBlue:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)HSetthresholdsensitivity:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)BSetsmoothing:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
