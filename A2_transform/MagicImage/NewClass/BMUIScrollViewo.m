#import "BMUIScrollViewo.h"
@implementation BMUIScrollViewo
+ (BOOL)uSetshouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)lShouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)RSetshouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)XShouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ESetshouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ZShouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
