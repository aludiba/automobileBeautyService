#import "BMBMGPUImageChromaKeyFiltercK.h"
@implementation BMBMGPUImageChromaKeyFiltercK
+ (BOOL)eJinitbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)KUsetcolortoreplaceredgreenbluebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)KEsetthresholdsensitivitybm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)sGsetsmoothingbm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
