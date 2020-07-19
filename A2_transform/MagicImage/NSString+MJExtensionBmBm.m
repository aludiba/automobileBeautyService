#import "NSString+MJExtensionBmBm.h"
@implementation NSString (MJExtensionBmBm)
+ (BOOL)mj_underlineFromCamelBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)mj_camelFromUnderlineBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mj_firstCharLowerBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mj_firstCharUpperBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)mj_isPureIntBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)mj_urlBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
