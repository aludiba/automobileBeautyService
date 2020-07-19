#import "BKMIFeedbackVC+Bm.h"
@implementation BKMIFeedbackVC (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)BKcreatUIBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)BKsendrFeedBackClickedBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
