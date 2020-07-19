#import "BMMJRefreshAutoStateFooterE.h"
@implementation BMMJRefreshAutoStateFooterE
+ (BOOL)CstateTitles:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)RstateLabel:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)JSettitleXForstate:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ostateLabelClick:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)Mprepare:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)aplaceSubviews:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)gSetstate:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
