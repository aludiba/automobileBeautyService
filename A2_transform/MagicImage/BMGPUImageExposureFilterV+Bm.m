#import "BMGPUImageExposureFilterV+Bm.h"
@implementation BMGPUImageExposureFilterV (Bm)
+ (BOOL)wInitbmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)WSetexposurebmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
