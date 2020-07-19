#import "BMRACSignali+Bm.h"
@implementation BMRACSignali (Bm)
+ (BOOL)lSubscribebmbmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)MSubscribenextbmbmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)hSubscribenextcompletedbmbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)QSubscribenexterrorcompletedbmbmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)WSubscribeerrorbmbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)XSubscribecompletedbmbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)rSubscribenexterrorbmbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)NSubscribeerrorcompletedbmbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
