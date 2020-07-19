#import "BMGPUImageHazeFilterV.h"
@implementation BMGPUImageHazeFilterV
+ (BOOL)YInitbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)OSetdistancebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)jSetslopebm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
