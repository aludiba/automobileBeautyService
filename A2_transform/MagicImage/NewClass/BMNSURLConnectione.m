#import "BMNSURLConnectione.h"
@implementation BMNSURLConnectione
+ (BOOL)FRac_Sendasynchronousrequestbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
