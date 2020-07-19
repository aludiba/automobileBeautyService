#import "YCPresentationController+BmHb.h"
@implementation YCPresentationController (BmHb)
+ (BOOL)containerViewWillLayoutSubviewsBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)coverViewBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)coverViewClickBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
