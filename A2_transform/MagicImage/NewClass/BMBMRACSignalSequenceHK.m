#import "BMBMRACSignalSequenceHK.h"
@implementation BMBMRACSignalSequenceHK
+ (BOOL)gOsequencewithsignalbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)AOheadbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)qEtailbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)kXarraybmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)qTdescriptionbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
