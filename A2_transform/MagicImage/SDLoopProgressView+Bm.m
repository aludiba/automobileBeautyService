#import "SDLoopProgressView+Bm.h"
@implementation SDLoopProgressView (Bm)
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
