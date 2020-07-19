#import "BMGPUImageChromaKeyFilters.h"
@implementation BMGPUImageChromaKeyFilters
+ (BOOL)Tinit:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)PSetcolortoreplaceredBGreenlBlue:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)SSetthresholdsensitivity:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)cSetsmoothing:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
