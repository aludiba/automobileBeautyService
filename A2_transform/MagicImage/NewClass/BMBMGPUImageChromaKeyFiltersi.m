#import "BMBMGPUImageChromaKeyFiltersi.h"
@implementation BMBMGPUImageChromaKeyFiltersi
+ (BOOL)tTinit:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)GPsetcolortoreplaceredbgreenlblue:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)wSsetthresholdsensitivity:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)wCsetsmoothing:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
