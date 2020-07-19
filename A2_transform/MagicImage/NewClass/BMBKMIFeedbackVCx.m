#import "BMBKMIFeedbackVCx.h"
@implementation BMBKMIFeedbackVCx
+ (BOOL)pviewDidLoad:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)KBKcreatUI:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)gBKsendrFeedBackClicked:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
