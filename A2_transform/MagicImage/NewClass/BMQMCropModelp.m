#import "BMQMCropModelp.h"
@implementation BMQMCropModelp
+ (BOOL)ubuildCropModels:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
