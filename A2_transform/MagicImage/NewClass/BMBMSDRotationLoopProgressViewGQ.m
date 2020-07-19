#import "BMBMSDRotationLoopProgressViewGQ.h"
@implementation BMBMSDRotationLoopProgressViewGQ
+ (BOOL)BOinitwithframe:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)uRchangeangle:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)SXdrawrect:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
