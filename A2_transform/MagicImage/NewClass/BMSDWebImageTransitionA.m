#import "BMSDWebImageTransitionA.h"
@implementation BMSDWebImageTransitionA
+ (BOOL)vfadeTransition:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)aflipFromLeftTransition:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sflipFromRightTransition:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)GflipFromTopTransition:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)VflipFromBottomTransition:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)gcurlUpTransition:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)GcurlDownTransition:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
