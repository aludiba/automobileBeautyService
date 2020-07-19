#import "BMBMGPUImageHazeFilternd.h"
@implementation BMBMGPUImageHazeFilternd
+ (BOOL)tCinit:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)BFsetdistance:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)hEsetslope:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
