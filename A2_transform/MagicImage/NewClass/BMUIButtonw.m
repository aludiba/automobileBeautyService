#import "BMUIButtonw.h"
@implementation BMUIButtonw
+ (BOOL)bload:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)Osd_button_layoutSubviews:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
