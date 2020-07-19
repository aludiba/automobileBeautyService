#import "BMBMRTCheckMarkViewLu.h"
@implementation BMBMRTCheckMarkViewLu
+ (BOOL)RTawakefromnibbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mRdrawrectbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
