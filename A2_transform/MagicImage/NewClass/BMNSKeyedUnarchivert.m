#import "BMNSKeyedUnarchivert.h"
@implementation BMNSKeyedUnarchivert
+ (BOOL)nUnarchiveobjectwithdatahException:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)fUnarchiveobjectwithfileVException:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
