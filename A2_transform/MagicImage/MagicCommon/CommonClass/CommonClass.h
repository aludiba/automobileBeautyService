#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CommonClass : NSObject
+ (void)deleteAllCacheAndCookie;
+ (void)deleteWebCache;
+ (NSMutableAttributedString *)htmlStrTraslateNormalStrWithHtml:(NSString *)htmlStr Withfont:(UIFont *)font withColor:(UIColor *)color;
+ (void)endRefreshing:(UITableView *)tableView;
+ (NSString *)noWhiteSpaceString:(NSString *)oldStr;
+ (NSString *)convertToJsonData:(NSDictionary *)dict;
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
+ (UIImageView *)clipImageView:(UIImageView * )imageView withCornerType:(UIRectCorner)cornerType WithSize:(CGSize)size;
+ (BOOL)stringContrainsEmoji:(NSString *)string;
+(UIImage *)clipImage:(UIImage *)image scaleToSize:(CGSize)size;
+ (NSString *)timeFormatted:(long long)totalSeconds;
+(NSString *)readStampTimeString;
+(NSString *)readWeekDay;
+ (NSString *)readWeekDayWith:(NSDate *)date;
+ (NSString *)readCurrentTimeString;
+ (NSString *)getCurrentTimes;
+ (NSArray *)readBeforeSevenTimeStringCurrenTimeWithType:(NSInteger)type;
+ (NSArray *)readAfterSevenTimeStringWithCurrentTimeWithzType:(NSInteger)type;
+ (NSInteger)getDaysFrom:(NSDate *)serverDate To:(NSDate *)endDate;
+ (NSDate *)StringTODate:(NSString *)sender;
+ (NSString *)timestampToString:(long long)timestamp;
+ (NSString *)timesTampMaxToString:(long)timestamp;
+(NSString *)stringFromParameters:(NSDictionary *)parameters;
+(id)MD5:(NSString *)MD5String;
+ (UIColor *)colorWithHexString: (NSString *)color;
+ (BOOL)isBlankString:(NSString *)string;
+(UIImage *)getImageWithBgColor:(UIColor *)color;
+(float)textWidthByString:(NSString *)calculatorString sizeFont:(NSInteger )font layoutWidth:(CGFloat)layoutWidth spaceWidth:(CGFloat)spaceWidth;
+(NSMutableAttributedString *)setBasicTitle:(NSString *)basicTitle homeTitle:(NSString *)homeTitle changeTitle:(NSString *)changeTitle  color:(UIColor *)getColor size:(NSInteger )sizeW isBold:(BOOL)isBold;
+(NSMutableAttributedString *)setTitle:(NSString *)title color:(UIColor *)color;
+(NSMutableAttributedString *)setTitle:(NSString *)title lineSpace:(CGFloat )lineSpace textSpace:(CGFloat )textSpace;
+(UIViewController *)getTopCurrentViewController;
+ (NSData *)compressOriginalImage:(UIImage *)image toMaxDataSizeKBytes:(CGFloat)size;
+ (UIViewController *)getCurrentVC;
@end
