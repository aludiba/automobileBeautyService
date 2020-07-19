#import "BMYCPresentationControllert.h"
@implementation BMYCPresentationControllert
+ (BOOL)LcontainerViewWillLayoutSubviews:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)UcoverView:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)lcoverViewClick:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
