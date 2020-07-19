#import "BMBMNSImageDx.h"
@implementation BMBMNSImageDx
+ (BOOL)BCcgimage:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)xZimages:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)pSisgif:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
