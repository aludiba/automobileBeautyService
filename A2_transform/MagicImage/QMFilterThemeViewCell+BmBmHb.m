#import "QMFilterThemeViewCell+BmBmHb.h"
@implementation QMFilterThemeViewCell (BmBmHb)
+ (BOOL)awakeFromNibBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setSelectedBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
