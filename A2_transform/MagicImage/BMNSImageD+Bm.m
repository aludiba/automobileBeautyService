#import "BMNSImageD+Bm.h"
@implementation BMNSImageD (Bm)
+ (BOOL)CCGImageBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)ZimagesBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sisGIFBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
