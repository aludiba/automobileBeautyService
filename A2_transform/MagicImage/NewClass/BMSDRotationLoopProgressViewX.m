#import "BMSDRotationLoopProgressViewX.h"
@implementation BMSDRotationLoopProgressViewX
+ (BOOL)BInitwithframebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)oChangeanglebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)NDrawrectbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
