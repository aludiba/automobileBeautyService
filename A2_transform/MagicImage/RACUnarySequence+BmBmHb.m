#import "RACUnarySequence+BmBmHb.h"
@implementation RACUnarySequence (BmBmHb)
+ (BOOL)returnBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)tailBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)bindBmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)classForCoderBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)initWithCoderBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)encodeWithCoderBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)descriptionBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)hashBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)isEqualBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
