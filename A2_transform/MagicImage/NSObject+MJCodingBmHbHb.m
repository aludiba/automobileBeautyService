#import "NSObject+MJCodingBmHbHb.h"
@implementation NSObject (MJCodingBmHbHb)
+ (BOOL)mj_encodeBmHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)mj_decodeBmHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
