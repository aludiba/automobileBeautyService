#import "BMUITextFieldL.h"
@implementation BMUITextFieldL
+ (BOOL)WselectAllText:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)GSetselectedrange:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
