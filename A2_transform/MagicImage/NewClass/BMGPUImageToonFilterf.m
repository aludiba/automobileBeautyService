#import "BMGPUImageToonFilterf.h"
@implementation BMGPUImageToonFilterf
+ (BOOL)uInitbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sSetthresholdbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)QSetquantizationlevelsbm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
