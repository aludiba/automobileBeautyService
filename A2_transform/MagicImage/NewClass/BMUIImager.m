#import "BMUIImager.h"
@implementation BMUIImager
+ (BOOL)SImagewithcolorbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)WColoratpixelbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)lConverttograyimagebm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
