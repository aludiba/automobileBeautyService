#import "QMFrameModel+Bm.h"
@implementation QMFrameModel (Bm)
+ (BOOL)buildFrameModelsBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
