#import "BMMJPropertyTypen.h"
@implementation BMMJPropertyTypen
+ (BOOL)dCachedtypewithcodebm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)wSetcodebm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
