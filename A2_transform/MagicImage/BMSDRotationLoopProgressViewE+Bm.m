#import "BMSDRotationLoopProgressViewE+Bm.h"
@implementation BMSDRotationLoopProgressViewE (Bm)
+ (BOOL)KInitwithframeBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)QchangeAngleBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)IDrawrectBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
