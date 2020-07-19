#import "BMUIRefreshControll+BmBmHb.h"
@implementation BMUIRefreshControll (BmBmHb)
+ (BOOL)ERac_CommandbmBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)sSetrac_CommandbmBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
