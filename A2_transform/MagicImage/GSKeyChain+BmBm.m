#import "GSKeyChain+BmBm.h"
@implementation GSKeyChain (BmBm)
+ (BOOL)getKeychainQueryBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)saveDataBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)loadBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)deleteBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
