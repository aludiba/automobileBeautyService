#import "MAS_VIEW+MASConstraintsBm.h"
@implementation MAS_VIEW (MASConstraintsBm)
+ (BOOL)mas_installedConstraintsBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
