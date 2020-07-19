#import "NSString+MJExtensionDeprecated_v_2_5_16BmBm.h"
@implementation NSString (MJExtensionDeprecated_v_2_5_16BmBm)
+ (BOOL)underlineFromCamelBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)camelFromUnderlineBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)firstCharLowerBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)firstCharUpperBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)isPureIntBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)urlBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
