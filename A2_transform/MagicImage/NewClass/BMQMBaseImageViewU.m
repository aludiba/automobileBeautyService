#import "BMQMBaseImageViewU.h"
@implementation BMQMBaseImageViewU
+ (BOOL)QInitwithframe:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)eSetimage:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
