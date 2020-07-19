#import "BMNSKeyedUnarchivert+Bm.h"
@implementation BMNSKeyedUnarchivert (Bm)
+ (BOOL)nUnarchiveobjectwithdatahExceptionBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)fUnarchiveobjectwithfileVExceptionBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
