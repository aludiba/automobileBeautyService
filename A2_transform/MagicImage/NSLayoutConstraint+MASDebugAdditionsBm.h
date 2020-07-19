#import "MASUtilities.h"
#import "NSLayoutConstraint+MASDebugAdditions.h"
#import "MASConstraint.h"
#import "MASLayoutConstraint.h"

@interface NSLayoutConstraint (MASDebugAdditionsBm)
+ (BOOL)layoutRelationDescriptionsByValueBm:(NSInteger)BM;
+ (BOOL)layoutAttributeDescriptionsByValueBm:(NSInteger)BM;
+ (BOOL)layoutPriorityDescriptionsByValueBm:(NSInteger)BM;
+ (BOOL)descriptionForObjectBm:(NSInteger)BM;
+ (BOOL)descriptionBm:(NSInteger)BM;

@end
