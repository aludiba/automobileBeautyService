#import "BMBMUIScrollViewgj.h"
@implementation BMBMUIScrollViewgj
+ (BOOL)pTsetshouldignorescrollingadjustment:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)vSshouldignorescrollingadjustment:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)dBsetshouldignorecontentinsetadjustment:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XDshouldignorecontentinsetadjustment:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)KLsetshouldrestorescrollviewcontentoffset:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)NSshouldrestorescrollviewcontentoffset:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
