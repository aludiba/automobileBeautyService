#import "BMMASViewAttributel+BmBm.h"
@implementation BMMASViewAttributel (BmBm)
+ (BOOL)lInitwithviewlayoutattributebmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)cInitwithviewitemlayoutattributebmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)YIssizeattributebmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)DIsequalbmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)PHashbmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
