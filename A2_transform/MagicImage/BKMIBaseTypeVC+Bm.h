#import <UIKit/UIKit.h>
#import "BKMIBaseTypeVC.h"
#import "MISlideVC.h"
#import "BKMIFilterVC.h"
#import "BKMIStickerVC.h"
#import "BKMIUserModel.h"
#import "BKMIStoreVC.h"
#import "BKMILoginVC.h"

@interface BKMIBaseTypeVC (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM;
+ (BOOL)BKloginOutBm:(NSInteger)BM;
+ (BOOL)BKcreateCoinsViewBm:(NSInteger)BM;
+ (BOOL)BKloadUserInfoBm:(NSInteger)BM;
+ (BOOL)BKtapActionBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;

@end
