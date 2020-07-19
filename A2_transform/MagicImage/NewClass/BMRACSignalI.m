#import "BMRACSignali.h"
@implementation BMRACSignali
+ (BOOL)lSubscribebmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)MSubscribenextbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)hSubscribenextcompletedbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)QSubscribenexterrorcompletedbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)WSubscribeerrorbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)XSubscribecompletedbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)rSubscribenexterrorbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)NSubscribeerrorcompletedbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
