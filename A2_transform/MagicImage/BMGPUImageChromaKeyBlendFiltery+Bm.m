#import "BMGPUImageChromaKeyBlendFiltery+Bm.h"
@implementation BMGPUImageChromaKeyBlendFiltery (Bm)
+ (BOOL)IinitBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)LSetcolortoreplaceredMGreenMBlueBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)NSetthresholdsensitivityBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)ySetsmoothingBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
