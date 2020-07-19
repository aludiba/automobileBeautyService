#import "BMQMFilterThemeViewCellc.h"
@implementation BMQMFilterThemeViewCellc
+ (BOOL)YawakeFromNib:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)rSetselected:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
