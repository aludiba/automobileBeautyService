#import "UITextField+YYAddBm.h"
@implementation UITextField (YYAddBm)
+ (BOOL)selectAllTextBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setSelectedRangeBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
