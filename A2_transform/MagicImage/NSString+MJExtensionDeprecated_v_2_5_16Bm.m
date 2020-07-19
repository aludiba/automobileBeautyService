#import "NSString+MJExtensionDeprecated_v_2_5_16Bm.h"
@implementation NSString (MJExtensionDeprecated_v_2_5_16Bm)
+ (BOOL)underlineFromCamelBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)camelFromUnderlineBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)firstCharLowerBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)firstCharUpperBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)isPureIntBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)urlBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
