#import "YCPresentationController+Bm.h"
@implementation YCPresentationController (Bm)
+ (BOOL)containerViewWillLayoutSubviewsBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)coverViewBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)coverViewClickBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
