#import "BMBKMITagsCellA.h"
@implementation BMBKMITagsCellA
+ (BOOL)DInitwithstyleXReuseidentifier:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)BSetbkmodel:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
