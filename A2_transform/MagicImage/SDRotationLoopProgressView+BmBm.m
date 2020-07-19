#import "SDRotationLoopProgressView+BmBm.h"
@implementation SDRotationLoopProgressView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)changeAngleBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)drawRectBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
