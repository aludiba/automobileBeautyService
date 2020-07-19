#import "MASViewAttribute.h"
#import "MASConstraint.h"
#import "MASLayoutConstraint.h"
#import "MASUtilities.h"
#import "MASViewConstraint.h"
#import "MASConstraint+Private.h"
#import "MASCompositeConstraint.h"
#import "MASLayoutConstraint.h"
#import "View+MASAdditions.h"
#import <objc/runtime.h>

@interface MASViewConstraint (-Deletecomments)
+ (BOOL)initWithFirstViewAttribute-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)copyWithZone-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)installedConstraintsForView-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setLayoutConstant-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setLayoutRelation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)supportsActiveProperty-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isActive-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)hasBeenInstalled-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setSecondViewAttribute-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)(CGFloat))multipliedBy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)(CGFloat))dividedBy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)(MASLayoutPriority))priority-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)(id, NSLayoutRelation))equalToWithRelation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)with-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)and-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addConstraintWithLayoutAttribute-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)animator-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)(id))key-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInsets-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInset-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setOffset-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setSizeOffset-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setCenterOffset-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)activate-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deactivate-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)install-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)layoutConstraintSimilarTo-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)uninstall-Deletecomments:(NSInteger)-deleteComments;

@end
