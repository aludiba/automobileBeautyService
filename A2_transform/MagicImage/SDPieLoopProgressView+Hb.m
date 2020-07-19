#import "SDPieLoopProgressView+Hb.h"
@implementation SDPieLoopProgressView (Hb)
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)drawRectHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
