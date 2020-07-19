#import "BMBMMJRefreshBackStateFooterRJ.h"
@implementation BMBMMJRefreshBackStateFooterRJ
+ (BOOL)LLstatetitles:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)KVstatelabel:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)FQsettitleeforstate:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)PFtitleforstate:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)YUprepare:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)ADplacesubviews:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)EMsetstate:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
