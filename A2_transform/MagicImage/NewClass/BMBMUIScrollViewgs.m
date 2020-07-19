#import "BMBMUIScrollViewgs.h"
@implementation BMBMUIScrollViewgs
+ (BOOL)XTsetshouldignorescrollingadjustment:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)cSshouldignorescrollingadjustment:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)oBsetshouldignorecontentinsetadjustment:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)cDshouldignorecontentinsetadjustment:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)JLsetshouldrestorescrollviewcontentoffset:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)hSshouldrestorescrollviewcontentoffset:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
