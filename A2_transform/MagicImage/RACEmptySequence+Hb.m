#import "RACEmptySequence+Hb.h"
@implementation RACEmptySequence (Hb)
+ (BOOL)emptyHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)headHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)tailHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)bindPassingthroughvaluesfromsequenceHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)classForCoderHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)hashHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
