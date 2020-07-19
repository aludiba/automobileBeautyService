#import "BMRACErrorSignalo.h"
@implementation BMRACErrorSignalo
+ (BOOL)YErrorbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)eSubscribebm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
