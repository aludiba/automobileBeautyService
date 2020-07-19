#import "SDRotationLoopProgressView+BmHbHb.h"
@implementation SDRotationLoopProgressView (BmHbHb)
+ (BOOL)initWithFrameBmHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)changeAngleBmHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)drawRectBmHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
