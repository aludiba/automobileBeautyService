#import "BMBMGPUImageToonFilterfv.h"
@implementation BMBMGPUImageToonFilterfv
+ (BOOL)kUinitbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)lSsetthresholdbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)iQsetquantizationlevelsbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
