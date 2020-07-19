#import "SDTransparentPieProgressView+Bm.h"
@implementation SDTransparentPieProgressView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
