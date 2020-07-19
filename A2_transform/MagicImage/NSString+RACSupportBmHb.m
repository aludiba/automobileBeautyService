#import "NSString+RACSupportBmHb.h"
@implementation NSString (RACSupportBmHb)
+ (BOOL)rac_readContentsOfURLUsedencodingSchedulerBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
