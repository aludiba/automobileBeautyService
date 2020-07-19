#import "RTCheckMarkView+Bm.h"
@implementation RTCheckMarkView (Bm)
+ (BOOL)awakeFromNibBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)drawRectBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
