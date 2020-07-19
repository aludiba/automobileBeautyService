#import "BMTOCropViewControllerTransitioningp+Bm.h"
@implementation BMTOCropViewControllerTransitioningp (Bm)
+ (BOOL)ATransitiondurationBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)NAnimatetransitionBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)AresetBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
