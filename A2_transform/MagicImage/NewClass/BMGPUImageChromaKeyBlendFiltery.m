#import "BMGPUImageChromaKeyBlendFiltery.h"
@implementation BMGPUImageChromaKeyBlendFiltery
+ (BOOL)Iinit:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)LSetcolortoreplaceredMGreenMBlue:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)NSetthresholdsensitivity:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)ySetsmoothing:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
