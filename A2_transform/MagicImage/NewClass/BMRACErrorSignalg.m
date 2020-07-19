#import "BMRACErrorSignalg.h"
@implementation BMRACErrorSignalg
+ (BOOL)NError:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)zSubscribe:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
