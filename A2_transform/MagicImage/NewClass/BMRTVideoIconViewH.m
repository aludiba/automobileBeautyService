#import "BMRTVideoIconViewH.h"
@implementation BMRTVideoIconViewH
+ (BOOL)QawakeFromNib:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)xDrawrect:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
