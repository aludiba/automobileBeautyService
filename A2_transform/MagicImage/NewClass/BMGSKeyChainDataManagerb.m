#import "BMGSKeyChainDataManagerb.h"
@implementation BMGSKeyChainDataManagerb
+ (BOOL)ESaveuuid:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)KreadUUID:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)hdeleteUUID:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
