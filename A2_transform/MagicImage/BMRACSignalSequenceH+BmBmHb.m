#import "BMRACSignalSequenceH+BmBmHb.h"
@implementation BMRACSignalSequenceH (BmBmHb)
+ (BOOL)OSequencewithsignalbmBmBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)OHeadbmBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)eTailbmBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)XArraybmBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)TDescriptionbmBmBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
