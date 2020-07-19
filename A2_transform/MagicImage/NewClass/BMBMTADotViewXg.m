#import "BMBMTADotViewXg.h"
@implementation BMBMTADotViewXg
+ (BOOL)RDinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rWinitwithframe:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)YJinitwithcoder:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)JXinitialization:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)XQchangeactivitystate:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
