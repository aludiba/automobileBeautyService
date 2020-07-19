#import "SDRotationLoopProgressView+Bm.h"
@implementation SDRotationLoopProgressView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)changeAngleBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
