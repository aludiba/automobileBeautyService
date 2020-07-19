#import "TAAbstractDotView+Bm.h"
@implementation TAAbstractDotView (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)changeActivityStateBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
