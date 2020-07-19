#import "BMBMGPUImageToonFilteriB.h"
@implementation BMBMGPUImageToonFilteriB
+ (BOOL)fJinit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)pIsetthreshold:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)oKsetquantizationlevels:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
