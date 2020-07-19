#import "RACUnarySequence+Hb.h"
@implementation RACUnarySequence (Hb)
+ (BOOL)returnHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)bindHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)classForCoderHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)hashHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
