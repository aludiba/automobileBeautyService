#import "BMNSStringt+Bm.h"
@implementation BMNSStringt (Bm)
+ (BOOL)XunderlineFromCamelBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)wcamelFromUnderlineBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)afirstCharLowerBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)jfirstCharUpperBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)fisPureIntBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)HurlBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
