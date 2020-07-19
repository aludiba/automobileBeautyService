#import "BMBMGPUImageToonFilterit.h"
@implementation BMBMGPUImageToonFilterit
+ (BOOL)EJinitbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)dIsetthresholdbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)mKsetquantizationlevelsbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
