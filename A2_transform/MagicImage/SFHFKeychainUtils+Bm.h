#import <UIKit/UIKit.h>
#import "SFHFKeychainUtils.h"
#import <Security/Security.h>

@interface SFHFKeychainUtils (Bm)
+ (BOOL)getPasswordForUsernameAndservicenameErrorBm:(NSInteger)BM;
+ (BOOL)storeUsernameAndpasswordForservicenameUpdateexistingErrorBm:(NSInteger)BM;
+ (BOOL)deleteItemForUsernameAndservicenameErrorBm:(NSInteger)BM;
+ (BOOL)getKeychainItemReferenceForUsernameAndservicenameErrorBm:(NSInteger)BM;
+ (BOOL)getPasswordForUsernameAndservicenameErrorBm:(NSInteger)BM;
+ (BOOL)storeUsernameAndpasswordForservicenameUpdateexistingErrorBm:(NSInteger)BM;
+ (BOOL)deleteItemForUsernameAndservicenameErrorBm:(NSInteger)BM;

@end
