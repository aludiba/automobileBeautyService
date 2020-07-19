#import "BMRTVideoIconViewp.h"
@implementation BMRTVideoIconViewp
+ (BOOL)BawakeFromNib:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)tDrawrect:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
