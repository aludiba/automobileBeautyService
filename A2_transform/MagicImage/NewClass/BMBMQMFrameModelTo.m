#import "BMBMQMFrameModelTo.h"
@implementation BMBMQMFrameModelTo
+ (BOOL)LCbuildframemodels:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
