#import "SDPieLoopProgressView+Bm.h"
@implementation SDPieLoopProgressView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
