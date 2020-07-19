#import "BMSDRotationLoopProgressViewX+Bm.h"
@implementation BMSDRotationLoopProgressViewX (Bm)
+ (BOOL)BInitwithframebmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)oChangeanglebmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)NDrawrectbmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
