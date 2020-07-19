#import "UITextField+YYAddHb.h"
@implementation UITextField (YYAddHb)
+ (BOOL)selectAllTextHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setSelectedRangeHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
