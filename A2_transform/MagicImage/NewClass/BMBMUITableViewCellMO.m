#import "BMBMUITableViewCellMO.h"
@implementation BMBMUITableViewCellMO
+ (BOOL)EOrac_Prepareforreusesignalbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
