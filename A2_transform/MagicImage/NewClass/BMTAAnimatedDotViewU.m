#import "BMTAAnimatedDotViewU.h"
@implementation BMTAAnimatedDotViewU
+ (BOOL)Iinit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)UInitwithframe:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)EInitwithcoder:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)iSetdotcolor:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)zinitialization:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)jChangeactivitystate:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)kanimateToActiveState:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)ianimateToDeactiveState:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
