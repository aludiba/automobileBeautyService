#import "BMNSThreadW.h"
@implementation BMNSThreadW
+ (BOOL)EaddAutoreleasePoolToCurrentRunloop:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
