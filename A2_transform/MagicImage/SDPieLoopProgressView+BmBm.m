#import "SDPieLoopProgressView+BmBm.h"
@implementation SDPieLoopProgressView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)drawRectBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
