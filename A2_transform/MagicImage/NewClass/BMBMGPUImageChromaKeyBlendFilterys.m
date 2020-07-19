#import "BMBMGPUImageChromaKeyBlendFilterys.h"
@implementation BMBMGPUImageChromaKeyBlendFilterys
+ (BOOL)RIinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)HLsetcolortoreplaceredmgreenmblue:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)kNsetthresholdsensitivity:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)OYsetsmoothing:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
