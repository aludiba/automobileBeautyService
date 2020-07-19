#import "BMMJRefreshBackStateFooterR.h"
@implementation BMMJRefreshBackStateFooterR
+ (BOOL)lstateTitles:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)vstateLabel:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)QSettitleEForstate:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)FTitleforstate:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)Uprepare:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)dplaceSubviews:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)MSetstate:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
