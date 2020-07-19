#import <Foundation/Foundation.h>
#import <Security/Security.h>
#import "AFSecurityPolicy.h"
#import <AssertMacros.h>

@interface AFSecurityPolicy (-Deletecomments)
+ (BOOL)certificatesInBundle-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)defaultPolicy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)policyWithPinningMode-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)policyWithPinningModeWithpinnedcertificates-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setPinnedCertificates-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)evaluateServerTrustFordomain-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)keyPathsForValuesAffectingPinnedPublicKeys-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)supportsSecureCoding-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCoder-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)encodeWithCoder-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)copyWithZone-Deletecomments:(NSInteger)-deleteComments;

@end
