#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "NSArray+MASAdditions.h"
#import "View+MASAdditions.h"

@interface NSArray (MASAdditionsBm)
+ (BOOL)mas_makeConstraintsBm:(NSInteger)BM;
+ (BOOL)mas_updateConstraintsBm:(NSInteger)BM;
+ (BOOL)mas_remakeConstraintsBm:(NSInteger)BM;
+ (BOOL)mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingBm:(NSInteger)BM;
+ (BOOL)mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingBm:(NSInteger)BM;
+ (BOOL)mas_commonSuperviewOfViewsBm:(NSInteger)BM;

@end
