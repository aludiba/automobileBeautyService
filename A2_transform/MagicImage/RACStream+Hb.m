#import "RACStream+Hb.h"
@implementation RACStream (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)emptyHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)bindHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)returnHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)concatHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)zipWithHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setNameWithFormatHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
