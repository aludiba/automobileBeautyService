#import "GSKeyChain+BmBmHb.h"
@implementation GSKeyChain (BmBmHb)
+ (BOOL)getKeychainQueryBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)saveDataBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)loadBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)deleteBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
