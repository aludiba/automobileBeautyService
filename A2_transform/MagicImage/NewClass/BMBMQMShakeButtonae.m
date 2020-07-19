#import "BMBMQMShakeButtonae.h"
@implementation BMBMQMShakeButtonae
+ (BOOL)RCinitwithframe:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)cErunshakeanimation:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
