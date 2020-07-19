#import "hbBMUILabelen.h"
@implementation hbBMUILabelen
+ (BOOL)IWmj_Labelbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)iCmj_Textwithbm:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
