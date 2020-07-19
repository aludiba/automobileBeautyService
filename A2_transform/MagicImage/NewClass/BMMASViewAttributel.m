#import "BMMASViewAttributel.h"
@implementation BMMASViewAttributel
+ (BOOL)lInitwithviewlayoutattributebm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)cInitwithviewitemlayoutattributebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)YIssizeattributebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)DIsequalbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)PHashbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
