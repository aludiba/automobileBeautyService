#import "BMUIButtonw+BmHb.h"
@implementation BMUIButtonw (BmHb)
+ (BOOL)bloadBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)Osd_button_layoutSubviewsBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
