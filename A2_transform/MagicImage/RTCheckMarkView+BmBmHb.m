#import "RTCheckMarkView+BmBmHb.h"
@implementation RTCheckMarkView (BmBmHb)
+ (BOOL)awakeFromNibBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)drawRectBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
