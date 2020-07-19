#import "BMRACSignalg.h"
@implementation BMRACSignalg
+ (BOOL)hSubscribebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)eSubscribenextbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)ZSubscribenextcompletedbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)wSubscribenexterrorcompletedbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)YSubscribeerrorbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)YSubscribecompletedbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)nSubscribenexterrorbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)FSubscribeerrorcompletedbm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
