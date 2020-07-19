#import "NSNumber+YYAddHb.h"
@implementation NSNumber (YYAddHb)
+ (BOOL)numberWithStringHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
