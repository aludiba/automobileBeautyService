#import "BMRACSignalx+Bm.h"
@implementation BMRACSignalx (Bm)
+ (BOOL)pEmptybmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)nReturnbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)DBindbmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)iConcatbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)lZipwithbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
