#import "BMBMGPUImageHazeFilternd+Bm.h"
@implementation BMBMGPUImageHazeFilternd (Bm)
+ (BOOL)tCinitBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)BFsetdistanceBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)hEsetslopeBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
