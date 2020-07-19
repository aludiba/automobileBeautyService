#import "BMGPUImageHazeFilterT.h"
@implementation BMGPUImageHazeFilterT
+ (BOOL)iInitbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)vSetdistancebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)VSetslopebm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
