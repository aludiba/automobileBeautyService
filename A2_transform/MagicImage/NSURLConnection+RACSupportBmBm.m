#import "NSURLConnection+RACSupportBmBm.h"
@implementation NSURLConnection (RACSupportBmBm)
+ (BOOL)rac_sendAsynchronousRequestBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
