#import "BMGPUImageToonFilterf+Bm.h"
@implementation BMGPUImageToonFilterf (Bm)
+ (BOOL)uInitbmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sSetthresholdbmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)QSetquantizationlevelsbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
