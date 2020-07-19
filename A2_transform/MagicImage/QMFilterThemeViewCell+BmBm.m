#import "QMFilterThemeViewCell+BmBm.h"
@implementation QMFilterThemeViewCell (BmBm)
+ (BOOL)awakeFromNibBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setSelectedBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
