#import "NSURLConnection+RACSupportHb.h"
@implementation NSURLConnection (RACSupportHb)
+ (BOOL)rac_sendAsynchronousRequestHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
