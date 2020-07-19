#import "BMQMShakeButtona+Bm.h"
@implementation BMQMShakeButtona (Bm)
+ (BOOL)cInitwithframeBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)erunShakeAnimationBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
