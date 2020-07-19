#import "NSString+RACSupportBm.h"
@implementation NSString (RACSupportBm)
+ (BOOL)rac_readContentsOfURLUsedencodingSchedulerBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
