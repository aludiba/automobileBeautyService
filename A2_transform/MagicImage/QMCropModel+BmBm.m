#import "QMCropModel+BmBm.h"
@implementation QMCropModel (BmBm)
+ (BOOL)buildCropModelsBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
