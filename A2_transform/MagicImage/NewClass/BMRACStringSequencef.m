#import "BMRACStringSequencef.h"
@implementation BMRACStringSequencef
+ (BOOL)XSequencewithstringROffset:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)Ohead:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)otail:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)Barray:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)Xdescription:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
