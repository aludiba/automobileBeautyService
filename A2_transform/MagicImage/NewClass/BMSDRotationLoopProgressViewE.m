#import "BMSDRotationLoopProgressViewE.h"
@implementation BMSDRotationLoopProgressViewE
+ (BOOL)KInitwithframe:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)QchangeAngle:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)IDrawrect:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
