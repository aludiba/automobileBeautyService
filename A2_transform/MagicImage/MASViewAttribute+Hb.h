#import "MASUtilities.h"
#import "MASViewAttribute.h"

@interface MASViewAttribute (Hb)
+ (BOOL)initWithViewLayoutattributeHb:(NSInteger)hb;
+ (BOOL)initWithViewItemLayoutattributeHb:(NSInteger)hb;
+ (BOOL)isSizeAttributeHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;
+ (BOOL)hashHb:(NSInteger)hb;

@end
