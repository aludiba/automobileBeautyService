#import "SDWebImageTransition+ConveniencesBmBm.h"
@implementation SDWebImageTransition (ConveniencesBmBm)
+ (BOOL)fadeTransitionBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)flipFromLeftTransitionBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)flipFromRightTransitionBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)flipFromTopTransitionBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)flipFromBottomTransitionBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)curlUpTransitionBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)curlDownTransitionBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
