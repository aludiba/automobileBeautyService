#import "BMBMUIScrollViewFd.h"
@implementation BMBMUIScrollViewFd
+ (BOOL)ELsetshouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)BXshouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)nEsetshouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)WIshouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)FCsetshouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)XBshouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
