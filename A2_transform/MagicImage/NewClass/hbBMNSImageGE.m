#import "hbBMNSImageGE.h"
@implementation hbBMNSImageGE
+ (BOOL)CXcgimagebm:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)bHimagesbm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)XGisgifbm:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
