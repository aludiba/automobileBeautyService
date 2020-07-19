#import "BMGPUImageToonFilterI.h"
@implementation BMGPUImageToonFilterI
+ (BOOL)hInitbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)YSetthresholdbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)fSetquantizationlevelsbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
