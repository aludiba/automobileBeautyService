#import "BMBMBMGPUImageHazeFilternwT.h"
@implementation BMBMBMGPUImageHazeFilternwT
+ (BOOL)MLcinitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)OSfsetdistancebm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)STesetslopebm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
