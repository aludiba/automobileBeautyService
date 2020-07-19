#import "BMBMGPUImageToonFilteriG.h"
@implementation BMBMGPUImageToonFilteriG
+ (BOOL)iJinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)mIsetthreshold:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)kKsetquantizationlevels:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
