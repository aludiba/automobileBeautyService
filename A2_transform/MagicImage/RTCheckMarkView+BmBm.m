#import "RTCheckMarkView+BmBm.h"
@implementation RTCheckMarkView (BmBm)
+ (BOOL)awakeFromNibBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)drawRectBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
