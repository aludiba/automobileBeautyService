#import "BMNSStringt.h"
@implementation BMNSStringt
+ (BOOL)XunderlineFromCamel:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)wcamelFromUnderline:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)afirstCharLower:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)jfirstCharUpper:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)fisPureInt:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)Hurl:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
