#import "RTVideoIconView+Bm.h"
@implementation RTVideoIconView (Bm)
+ (BOOL)awakeFromNibBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
