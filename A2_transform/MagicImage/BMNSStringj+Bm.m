#import "BMNSStringJ+Bm.h"
@implementation BMNSStringJ (Bm)
+ (BOOL)Xmj_underlineFromCamelBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)qmj_camelFromUnderlineBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)amj_firstCharLowerBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)tmj_firstCharUpperBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)Xmj_isPureIntBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)emj_urlBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
