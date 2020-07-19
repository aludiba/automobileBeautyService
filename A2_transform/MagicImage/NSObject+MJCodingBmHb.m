#import "NSObject+MJCodingBmHb.h"
@implementation NSObject (MJCodingBmHb)
+ (BOOL)mj_encodeBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)mj_decodeBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
