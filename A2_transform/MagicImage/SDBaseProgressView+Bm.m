#import "SDBaseProgressView+Bm.h"
@implementation SDBaseProgressView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setProgressBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setCenterProgressTextWithattributesBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)dismissBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)progressViewBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
