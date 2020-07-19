#import "BMRACErrorSignalo+Bm.h"
@implementation BMRACErrorSignalo (Bm)
+ (BOOL)YErrorbmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)eSubscribebmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
