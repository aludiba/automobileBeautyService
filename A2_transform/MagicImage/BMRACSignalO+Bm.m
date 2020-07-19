#import "BMRACSignalO+Bm.h"
@implementation BMRACSignalO (Bm)
+ (BOOL)dSubscribebmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)cSubscribenextbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)FSubscribenextcompletedbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)TSubscribenexterrorcompletedbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)hSubscribeerrorbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)USubscribecompletedbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)GSubscribenexterrorbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)wSubscribeerrorcompletedbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
