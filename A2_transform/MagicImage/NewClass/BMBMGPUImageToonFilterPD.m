#import "BMBMGPUImageToonFilterPD.h"
@implementation BMBMGPUImageToonFilterPD
+ (BOOL)oXinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)rCsetthreshold:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)HGsetquantizationlevels:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
