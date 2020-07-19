#import "hbQMProgressHUDD.h"
@implementation hbQMProgressHUDD
+ (BOOL)nShowbmbmhb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)QHidebmbmhb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
