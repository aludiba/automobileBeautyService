#import "YCPresentationController+BmBm.h"
@implementation YCPresentationController (BmBm)
+ (BOOL)containerViewWillLayoutSubviewsBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)coverViewBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)coverViewClickBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
