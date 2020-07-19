#import "TAAbstractDotView+Hb.h"
@implementation TAAbstractDotView (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)changeActivityStateHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
