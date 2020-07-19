#import "QMFrameThemeViewCell+BmHb.h"
@implementation QMFrameThemeViewCell (BmHb)
+ (BOOL)awakeFromNibBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
