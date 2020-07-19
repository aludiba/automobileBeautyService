#import "QMFrameThemeViewCell+Bm.h"
@implementation QMFrameThemeViewCell (Bm)
+ (BOOL)awakeFromNibBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
