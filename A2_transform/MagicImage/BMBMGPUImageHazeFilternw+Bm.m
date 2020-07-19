#import "BMBMGPUImageHazeFilternw+Bm.h"
@implementation BMBMGPUImageHazeFilternw (Bm)
+ (BOOL)LCinitbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)SFsetdistancebmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)TEsetslopebmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
