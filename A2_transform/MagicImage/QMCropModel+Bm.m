#import "QMCropModel+Bm.h"
@implementation QMCropModel (Bm)
+ (BOOL)buildCropModelsBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
