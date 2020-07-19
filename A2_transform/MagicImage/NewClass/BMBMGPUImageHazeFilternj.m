#import "BMBMGPUImageHazeFilternj.h"
@implementation BMBMGPUImageHazeFilternj
+ (BOOL)BGinitbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)USsetdistancebmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)mLsetslopebmbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
