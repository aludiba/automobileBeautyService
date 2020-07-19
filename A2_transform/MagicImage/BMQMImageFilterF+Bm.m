#import "BMQMImageFilterF+Bm.h"
@implementation BMQMImageFilterF (Bm)
+ (BOOL)PInitwithfiltermodelBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)qbindQMTextureBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)OSetalphaBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
