#import "RACStream+BmBmBmHb.h"
@implementation RACStream (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)emptyBmBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)bindBmBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)returnBmBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)concatBmBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)zipWithBmBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setNameWithFormatBmBmBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
