#import "NSURLConnection+RACSupportBm.h"
@implementation NSURLConnection (RACSupportBm)
+ (BOOL)rac_sendAsynchronousRequestBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
