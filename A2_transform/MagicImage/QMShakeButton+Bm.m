#import "QMShakeButton+Bm.h"
@implementation QMShakeButton (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)runShakeAnimationBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
