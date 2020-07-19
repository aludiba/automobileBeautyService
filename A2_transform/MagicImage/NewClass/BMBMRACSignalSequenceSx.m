#import "BMBMRACSignalSequenceSx.h"
@implementation BMBMRACSignalSequenceSx
+ (BOOL)mOsequencewithsignalbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)FOheadbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)wQtailbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)LZarraybm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)pEdescriptionbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
