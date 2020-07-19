#import "RACStream+BmHb.h"
@implementation RACStream (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)emptyBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)bindBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)returnBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)concatBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)zipWithBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)setNameWithFormatBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
