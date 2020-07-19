#import "SDRotationLoopProgressView+Hb.h"
@implementation SDRotationLoopProgressView (Hb)
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)changeAngleHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)drawRectHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
