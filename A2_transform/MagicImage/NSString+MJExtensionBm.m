#import "NSString+MJExtensionBm.h"
@implementation NSString (MJExtensionBm)
+ (BOOL)mj_underlineFromCamelBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)mj_camelFromUnderlineBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)mj_firstCharLowerBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mj_firstCharUpperBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mj_isPureIntBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)mj_urlBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
