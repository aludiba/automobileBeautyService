#import "BMSDRotationLoopProgressViewG+Bm.h"
@implementation BMSDRotationLoopProgressViewG (Bm)
+ (BOOL)oInitwithframeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rchangeAngleBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)xDrawrectBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
