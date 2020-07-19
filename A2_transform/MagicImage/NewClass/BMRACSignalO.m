#import "BMRACSignalO.h"
@implementation BMRACSignalO
+ (BOOL)dSubscribebm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)cSubscribenextbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)FSubscribenextcompletedbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)TSubscribenexterrorcompletedbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)hSubscribeerrorbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)USubscribecompletedbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)GSubscribenexterrorbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)wSubscribeerrorcompletedbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
