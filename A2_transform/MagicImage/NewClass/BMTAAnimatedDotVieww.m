#import "BMTAAnimatedDotVieww.h"
@implementation BMTAAnimatedDotVieww
+ (BOOL)ainit:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)FInitwithframe:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)iInitwithcoder:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)gSetdotcolor:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)Jinitialization:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)YChangeactivitystate:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CanimateToActiveState:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)vanimateToDeactiveState:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
