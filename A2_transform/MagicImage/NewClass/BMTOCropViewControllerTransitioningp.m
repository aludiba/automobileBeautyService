#import "BMTOCropViewControllerTransitioningp.h"
@implementation BMTOCropViewControllerTransitioningp
+ (BOOL)ATransitionduration:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)NAnimatetransition:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)Areset:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
