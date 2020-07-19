#import "BMGPUImageHazeFiltern+BmBm.h"
@implementation BMGPUImageHazeFiltern (BmBm)
+ (BOOL)CinitBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)fSetdistanceBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)eSetslopeBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
