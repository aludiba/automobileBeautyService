#import "BMBMSDRotationLoopProgressViewGd.h"
@implementation BMBMSDRotationLoopProgressViewGd
+ (BOOL)DOinitwithframebm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)NRchangeanglebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)WXdrawrectbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
