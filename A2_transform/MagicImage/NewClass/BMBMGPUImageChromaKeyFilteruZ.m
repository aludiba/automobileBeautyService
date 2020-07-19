#import "BMBMGPUImageChromaKeyFilteruZ.h"
@implementation BMBMGPUImageChromaKeyFilteruZ
+ (BOOL)uWinit:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)IGsetcolortoreplaceredwgreenrblue:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)MAsetthresholdsensitivity:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)STsetsmoothing:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
