#import "BMBMRACSignalSequenceqV.h"
@implementation BMBMRACSignalSequenceqV
+ (BOOL)mNsequencewithsignalbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)WOheadbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lYtailbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)DDarraybm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)ZKdescriptionbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
