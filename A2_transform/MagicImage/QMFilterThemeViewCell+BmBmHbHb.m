#import "QMFilterThemeViewCell+BmBmHbHb.h"
@implementation QMFilterThemeViewCell (BmBmHbHb)
+ (BOOL)awakeFromNibBmBmHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setSelectedBmBmHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
