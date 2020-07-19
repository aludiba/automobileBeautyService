#import "QMFilterThemeViewCell+BmHb.h"
@implementation QMFilterThemeViewCell (BmHb)
+ (BOOL)awakeFromNibBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setSelectedBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
