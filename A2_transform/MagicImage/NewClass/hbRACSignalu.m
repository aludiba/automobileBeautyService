#import "hbRACSignalu.h"
@implementation hbRACSignalu
+ (BOOL)Bempty:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)JReturn:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)bBind:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)zConcat:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)IZipwith:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
