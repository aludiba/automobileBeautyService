#import "BMNSValueO+BmBm.h"
@implementation BMNSValueO (BmBm)
+ (BOOL)xrac_descriptionBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
