#import "SDWebImageTransition+ConveniencesBm.h"
@implementation SDWebImageTransition (ConveniencesBm)
+ (BOOL)fadeTransitionBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)flipFromLeftTransitionBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)flipFromRightTransitionBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)flipFromTopTransitionBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)flipFromBottomTransitionBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)curlUpTransitionBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)curlDownTransitionBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
