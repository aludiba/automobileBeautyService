#import "MAS_VIEW+MASConstraintsBmBm.h"
@implementation MAS_VIEW (MASConstraintsBmBm)
+ (BOOL)mas_installedConstraintsBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
