#import "BMNSStringJ.h"
@implementation BMNSStringJ
+ (BOOL)Xmj_underlineFromCamel:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)qmj_camelFromUnderline:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)amj_firstCharLower:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)tmj_firstCharUpper:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)Xmj_isPureInt:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)emj_url:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
