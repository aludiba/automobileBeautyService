#import "QMFilterThemeViewCell+Bm.h"
@implementation QMFilterThemeViewCell (Bm)
+ (BOOL)awakeFromNibBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setSelectedBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
