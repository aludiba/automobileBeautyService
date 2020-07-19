#import "hbNSImageX.h"
@implementation hbNSImageX
+ (BOOL)qCgimagebm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)wImagesbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)NIsgifbm:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
