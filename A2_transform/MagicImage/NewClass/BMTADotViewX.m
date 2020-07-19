#import "BMTADotViewX.h"
@implementation BMTADotViewX
+ (BOOL)dinit:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)WInitwithframe:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)jInitwithcoder:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)Xinitialization:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)qChangeactivitystate:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
