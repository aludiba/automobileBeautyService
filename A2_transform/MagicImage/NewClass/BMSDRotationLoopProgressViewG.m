#import "BMSDRotationLoopProgressViewG.h"
@implementation BMSDRotationLoopProgressViewG
+ (BOOL)oInitwithframe:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)rchangeAngle:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)xDrawrect:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
