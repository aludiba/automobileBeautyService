#import "BMNSImageD.h"
@implementation BMNSImageD
+ (BOOL)CCGImage:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)Zimages:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)sisGIF:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
