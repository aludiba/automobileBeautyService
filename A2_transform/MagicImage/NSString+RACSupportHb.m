#import "NSString+RACSupportHb.h"
@implementation NSString (RACSupportHb)
+ (BOOL)rac_readContentsOfURLUsedencodingSchedulerHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
