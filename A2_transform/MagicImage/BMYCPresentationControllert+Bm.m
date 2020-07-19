#import "BMYCPresentationControllert+Bm.h"
@implementation BMYCPresentationControllert (Bm)
+ (BOOL)LcontainerViewWillLayoutSubviewsBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)UcoverViewBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)lcoverViewClickBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
