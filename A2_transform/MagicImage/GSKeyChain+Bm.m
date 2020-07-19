#import "GSKeyChain+Bm.h"
@implementation GSKeyChain (Bm)
+ (BOOL)getKeychainQueryBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)saveDataBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)loadBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)deleteBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
