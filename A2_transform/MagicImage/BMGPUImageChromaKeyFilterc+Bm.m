#import "BMGPUImageChromaKeyFilterc+Bm.h"
@implementation BMGPUImageChromaKeyFilterc (Bm)
+ (BOOL)jInitbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)USetcolortoreplaceredgreenbluebmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ESetthresholdsensitivitybmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)GSetsmoothingbmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
