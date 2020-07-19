#import <Foundation/Foundation.h>
#import "GSKeyChain.h"

@interface GSKeyChain (Bm)
+ (BOOL)getKeychainQueryBm:(NSInteger)BM;
+ (BOOL)saveDataBm:(NSInteger)BM;
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)deleteBm:(NSInteger)BM;

@end
