#import "BMRACSignalx+BmHb.h"
@implementation BMRACSignalx (BmHb)
+ (BOOL)pEmptybmBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)nReturnbmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)DBindbmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)iConcatbmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)lZipwithbmBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
