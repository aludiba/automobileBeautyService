#import "RACUnarySequence+HbHb.h"
@implementation RACUnarySequence (HbHb)
+ (BOOL)returnHbHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)tailHbHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)bindHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)classForCoderHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)initWithCoderHbHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)encodeWithCoderHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)descriptionHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)hashHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)isEqualHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
