#import "BMGPUImageChromaKeyFilterc.h"
@implementation BMGPUImageChromaKeyFilterc
+ (BOOL)jInitbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)USetcolortoreplaceredgreenbluebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)ESetthresholdsensitivitybm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)GSetsmoothingbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
