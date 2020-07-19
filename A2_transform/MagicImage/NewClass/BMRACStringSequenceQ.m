#import "BMRACStringSequenceQ.h"
@implementation BMRACStringSequenceQ
+ (BOOL)KSequencewithstringoffsetbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)FHeadbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)HTailbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)fArraybm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rDescriptionbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
