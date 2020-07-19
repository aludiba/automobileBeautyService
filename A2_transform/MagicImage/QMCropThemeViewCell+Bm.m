#import "QMCropThemeViewCell+Bm.h"
@implementation QMCropThemeViewCell (Bm)
+ (BOOL)awakeFromNibBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
