#import "BMUIButtonw+Bm.h"
@implementation BMUIButtonw (Bm)
+ (BOOL)bloadBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)Osd_button_layoutSubviewsBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
