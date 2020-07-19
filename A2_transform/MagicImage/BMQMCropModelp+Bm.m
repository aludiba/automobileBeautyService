#import "BMQMCropModelp+Bm.h"
@implementation BMQMCropModelp (Bm)
+ (BOOL)ubuildCropModelsBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
