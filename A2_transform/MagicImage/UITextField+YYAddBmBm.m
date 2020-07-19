#import "UITextField+YYAddBmBm.h"
@implementation UITextField (YYAddBmBm)
+ (BOOL)selectAllTextBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setSelectedRangeBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
