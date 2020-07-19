#import "hbQMProgressHUDt.h"
@implementation hbQMProgressHUDt
+ (BOOL)HShowbmbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)qHidebmbm:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
