#import "RACUnarySequence+HbHbHb.h"
@implementation RACUnarySequence (HbHbHb)
+ (BOOL)returnHbHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)tailHbHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)bindHbHbHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)classForCoderHbHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)initWithCoderHbHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)encodeWithCoderHbHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)descriptionHbHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)hashHbHbHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)isEqualHbHbHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
