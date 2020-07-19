#import "BKMIFeedbackVC+BmBm.h"
@implementation BKMIFeedbackVC (BmBm)
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)BKcreatUIBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)BKsendrFeedBackClickedBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
