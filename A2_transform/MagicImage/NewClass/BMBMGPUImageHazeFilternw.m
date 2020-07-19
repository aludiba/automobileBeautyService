#import "BMBMGPUImageHazeFilternw.h"
@implementation BMBMGPUImageHazeFilternw
+ (BOOL)LCinitbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)SFsetdistancebm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)TEsetslopebm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
