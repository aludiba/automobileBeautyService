#import "BMBKMIMoreHeaderViewE.h"
@implementation BMBKMIMoreHeaderViewE
+ (BOOL)iInitwithframe:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)tBktap:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)hBKupdateViews:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
