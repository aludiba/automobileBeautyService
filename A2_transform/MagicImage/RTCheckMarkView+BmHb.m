#import "RTCheckMarkView+BmHb.h"
@implementation RTCheckMarkView (BmHb)
+ (BOOL)awakeFromNibBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)drawRectBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
