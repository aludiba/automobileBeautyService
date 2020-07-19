#import "QMCropModel+BmHb.h"
@implementation QMCropModel (BmHb)
+ (BOOL)buildCropModelsBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
