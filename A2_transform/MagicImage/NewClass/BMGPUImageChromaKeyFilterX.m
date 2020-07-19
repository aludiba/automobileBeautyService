#import "BMGPUImageChromaKeyFilterX.h"
@implementation BMGPUImageChromaKeyFilterX
+ (BOOL)tInitbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)USetcolortoreplaceredgreenbluebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)zSetthresholdsensitivitybm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)fSetsmoothingbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
