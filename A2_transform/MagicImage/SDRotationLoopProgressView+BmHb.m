#import "SDRotationLoopProgressView+BmHb.h"
@implementation SDRotationLoopProgressView (BmHb)
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)changeAngleBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)drawRectBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
