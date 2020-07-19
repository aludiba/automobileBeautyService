#import "QMFrameModel+BmBm.h"
@implementation QMFrameModel (BmBm)
+ (BOOL)buildFrameModelsBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
