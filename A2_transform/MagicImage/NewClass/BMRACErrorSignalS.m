#import "BMRACErrorSignalS.h"
@implementation BMRACErrorSignalS
+ (BOOL)ZError:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)hSubscribe:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
