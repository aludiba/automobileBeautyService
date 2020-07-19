#import "CommonClass.h"
#import <WebKit/WebKit.h>
#import <CommonCrypto/CommonHMAC.h>
#import "AFURLRequestSerialization.h"
@implementation CommonClass
+ (void)deleteAllCacheAndCookie{
    if (@available(iOS 9.0, *)) {
        WKWebsiteDataStore *dateStore = [WKWebsiteDataStore defaultDataStore];
        [dateStore fetchDataRecordsOfTypes:[WKWebsiteDataStore allWebsiteDataTypes] completionHandler:^(NSArray<WKWebsiteDataRecord *> * _Nonnull records) {
            for (WKWebsiteDataRecord *record in records)
            {
                if ( [record.displayName containsString:@"facebook"] || [record.displayName containsString:@"instagram"]) 
                {
                    [[WKWebsiteDataStore defaultDataStore] removeDataOfTypes:record.dataTypes
                                                              forDataRecords:@[record]
                                                           completionHandler:^{
                                                               NSLog(@"Cookies for %@ deleted successfully",record.displayName);
                                                           }];
                }
            }
        }];
        NSSet *websiteDataTypes = [WKWebsiteDataStore allWebsiteDataTypes];
        NSDate *dateFrom = [NSDate dateWithTimeIntervalSince1970:0];
        [[WKWebsiteDataStore defaultDataStore] removeDataOfTypes:websiteDataTypes modifiedSince:dateFrom completionHandler:^{
            MyLog(@"清除成功");
        }];
    } else {
        NSString *libraryPath = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        NSString *cookiesFolderPath = [libraryPath stringByAppendingString:@"/Cookies"];
        NSError *errors;
        [[NSFileManager defaultManager] removeItemAtPath:cookiesFolderPath error:&errors];
    }
}
+ (void)deleteWebCache{
}
+ (NSMutableAttributedString *)htmlStrTraslateNormalStrWithHtml:(NSString *)htmlStr Withfont:(UIFont *)font withColor:(UIColor *)color{
    NSMutableAttributedString * host  = [[NSMutableAttributedString alloc] initWithData:[htmlStr dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    NSMutableParagraphStyle *muParagraph = [[NSMutableParagraphStyle alloc]init];
    muParagraph.alignment = NSTextAlignmentCenter;
    [host setAttributes:@{NSParagraphStyleAttributeName : muParagraph,NSFontAttributeName:font,NSForegroundColorAttributeName:color} range:NSMakeRange(0, host.length)];
    return host;
}
+ (void)endRefreshing:(UITableView *)tableView{
    if (tableView.mj_header.refreshing) {
        [tableView.mj_header endRefreshing];
    }else if(tableView.mj_footer.refreshing){
        [tableView.mj_footer endRefreshing];
    }
}
+ (NSString *)noWhiteSpaceString:(NSString *)oldStr{
    NSString *newString = oldStr;
    newString = [newString stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    newString = [newString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    newString = [newString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];  
    newString = [newString stringByReplacingOccurrencesOfString:@" " withString:@""];
    return newString;
}
+ (NSString *)convertToJsonData:(NSDictionary *)dict{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString;
    if (!jsonData) {
        MyLog(@"%@",error);
    }else{
        jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    NSMutableString *mutStr = [NSMutableString stringWithString:jsonString];
    NSRange range = {0,jsonString.length};
    [mutStr replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:range];
    NSRange range2 = {0,mutStr.length};
    [mutStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
    return mutStr;
}
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString{
    if (jsonString == nil) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err){
        return nil;
    }
    return dic;
}
#pragma mark - 判断字符串中是否含有Emoj表情
+ (BOOL)stringContrainsEmoji:(NSString *)string {
    __block BOOL returnValue = NO;
    [string enumerateSubstringsInRange:NSMakeRange(0, string.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        const unichar hs = [substring characterAtIndex:0];
        if (0xd800 <= hs && hs <= 0xdbff) {
            if (substring.length > 1) {
                const unichar ls = [substring characterAtIndex:1];
                const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                if (0x1d000 <= uc && uc <= 0x1f77f) {
                    returnValue = YES;
                }
            }
        } else if (substring.length > 1) {
            const unichar ls = [substring characterAtIndex:1];
            if (ls == 0x20e3) {
                returnValue = YES;
            }
        } else {
            if (0x2100 <= hs && hs <= 0x27ff) {
                returnValue = YES;
            } else if (0x2B05 <= hs && hs <= 0x2b07) {
                returnValue = YES;
            } else if (0x2934 <= hs && hs <= 0x2935) {
                returnValue = YES;
            } else if (0x3297 <= hs && hs <= 0x3299) {
                returnValue = YES;
            } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                returnValue = YES;
            }
        }
    }];
    return returnValue;
}
#pragma mark -使用贝塞尔曲线UIBezierPath和Core Graphics框架画出一个圆角
+(UIImage *)clipImage:(UIImage *)image scaleToSize:(CGSize)size{
    CGSize newSize;
    if (image.size.height / image.size.width > 1){
        newSize.height = size.height;
        newSize.width = size.height / image.size.height * image.size.width;
    } else if (image.size.height / image.size.width < 1){
        newSize.height = size.width / image.size.width * image.size.height;
        newSize.width = size.width;
    } else {
        newSize = size;
    }
    UIGraphicsBeginImageContextWithOptions(newSize, YES, 0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}
+ (UIImageView *)clipImageView:(UIImageView * )imageView withCornerType:(UIRectCorner)cornerType WithSize:(CGSize)size{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:imageView.bounds byRoundingCorners:cornerType  cornerRadii:size];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = imageView.bounds;
    maskLayer.path = maskPath.CGPath;
    imageView.layer.mask = maskLayer;
    return imageView;
}
#pragma mark - 秒转换日期函数
+ (NSString *)timeFormatted:(long long)totalSeconds{
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSince1970:totalSeconds];
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate: date];
    NSDate *localeDate = [date  dateByAddingTimeInterval: interval];
    return [NSString stringWithFormat:@"%@", localeDate];
}
+(NSString *)readStampTimeString{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; 
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate *dateNow = [NSDate date];
    long long timeLong=[[NSNumber numberWithUnsignedLongLong:[dateNow timeIntervalSince1970]] integerValue];
    return [NSString stringWithFormat:@"%lld",timeLong];
}
+ (NSString *)readWeekDay{
    NSArray *weekdays = [NSArray arrayWithObjects:@"星期日", @"周一", @"周二", @"周三", @"周四", @"周五", @"周六", nil];
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    [calendar setTimeZone: timeZone];
    NSDate *date = [NSDate date];
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:date];
    return [weekdays objectAtIndex:theComponents.weekday-1];
}
+ (NSString *)readCurrentTimeString{
    NSDate *date = [NSDate date];
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSString *dateFormate = [formatter stringFromDate:date];
    return dateFormate;
}
+ (NSString *)getCurrentTimes{
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate * dateNow = [NSDate date];
    NSString * currentTimeString = [formatter stringFromDate:dateNow];
    return currentTimeString;
}
+ (NSArray *)readBeforeSevenTimeStringCurrenTimeWithType:(NSInteger)type{
    NSDate * date = [NSDate date];
    NSTimeInterval  nowTimeS = [date timeIntervalSince1970];
    NSTimeInterval timeS = 24*60*60;
    NSTimeInterval totalTime;
    NSMutableArray * timeArray = @[].mutableCopy;
    for (NSInteger i = 1; i <= 7; i++) {
        totalTime = nowTimeS - timeS*i ;
        NSDate * date1 = [NSDate dateWithTimeIntervalSince1970:totalTime];
        NSString * weekStr = [self readWeekDayWith:date1];
        NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        if (type == 1) {
            [formatter setDateFormat:@"YYYY-MM-dd"];
            NSString *dateFormate = [formatter stringFromDate:date1];
            NSString * timeStr = [NSString stringWithFormat:@"%@ %@",dateFormate,weekStr];
            [timeArray addObject:timeStr];
        }else{
            [formatter setDateFormat:@"MM-dd"];
            NSString *dateFormate = [formatter stringFromDate:date1];
            NSString * timeStr = [NSString stringWithFormat:@"%@\n%@",dateFormate,weekStr];
            [timeArray addObject:timeStr];
        }
    }
    return timeArray;
}
+ (NSArray *)readAfterSevenTimeStringWithCurrentTimeWithzType:(NSInteger)type{
    NSDate * date = [NSDate date];
    NSTimeInterval  nowTimeS = [date timeIntervalSince1970];
    NSTimeInterval timeS = 24*60*60;
    NSTimeInterval totalTime;
    NSMutableArray * timeArray = @[].mutableCopy;
    for (NSInteger i = 1; i <= 7; i++) {
        totalTime = nowTimeS + timeS*i ;
        NSDate * date1 = [NSDate dateWithTimeIntervalSince1970:totalTime];
        NSString * weekStr = [self readWeekDayWith:date1];
        NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        if (type == 1) {
            [formatter setDateFormat:@"YYYY-MM-dd"];
            NSString *dateFormate = [formatter stringFromDate:date1];
            NSString * timeStr = [NSString stringWithFormat:@"%@ %@",dateFormate,weekStr];
            [timeArray addObject:timeStr];
        }else{
            [formatter setDateFormat:@"MM-dd"];
            NSString *dateFormate = [formatter stringFromDate:date1];
            NSString * timeStr = [NSString stringWithFormat:@"%@\n%@",dateFormate,weekStr];
            [timeArray addObject:timeStr];
        }
    }
    return timeArray;
}
+ (NSString *)readWeekDayWith:(NSDate *)date{
    NSArray *weekdays = [NSArray arrayWithObjects:@"星期日", @"周一", @"周二", @"周三", @"周四", @"周五",@"周六" , nil];
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    [calendar setTimeZone: timeZone];
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:date];
    return [weekdays objectAtIndex:theComponents.weekday -1];
}
+ (NSInteger)getDaysFrom:(NSDate *)serverDate To:(NSDate *)endDate{
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [gregorian setFirstWeekday:2];
    NSDate *fromDate;
    NSDate *toDate;
    [gregorian rangeOfUnit:NSCalendarUnitDay startDate:&fromDate interval:NULL forDate:serverDate];
    [gregorian rangeOfUnit:NSCalendarUnitDay startDate:&toDate interval:NULL forDate:endDate];
    NSDateComponents *dayComponents = [gregorian components:NSCalendarUnitDay fromDate:fromDate toDate:toDate options:0];
    MyLog(@"%ld",dayComponents.day);
    return dayComponents.day;
}
+ (NSDate *)StringTODate:(NSString *)sender{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"YYYY-MMMM-dd HH:mm:ss";
    [dateFormatter setMonthSymbols:[NSArray arrayWithObjects:@"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12", nil]];
    NSDate * ValueDate = [dateFormatter dateFromString:sender];
    return ValueDate;
}
+ (NSString *)timestampToString:(long long)timestamp{
    NSTimeInterval interval    = timestamp / 1000.0;
    NSDate *date               = [NSDate dateWithTimeIntervalSince1970:interval];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM-dd HH:mm"];
    NSString *dateString       = [formatter stringFromDate: date];
    return dateString;
}
+ (NSString *)timesTampMaxToString:(long)timestamp{
    NSTimeInterval interval    = timestamp / 1000.0;
    NSDate *date               = [NSDate dateWithTimeIntervalSince1970:interval];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    NSString *dateString       = [formatter stringFromDate: date];
    return dateString;
}
+(NSString *)stringFromParameters:(NSDictionary *)parameters{
    if (parameters) {
        return AFQueryStringFromParameters(parameters);
    }else{
        return @"";
    }
}
+(id)MD5:(NSString *)MD5String{
    const char *cStr = [MD5String UTF8String];
    unsigned char digest[16];
    unsigned int x=(int)strlen(cStr) ;
    CC_MD5( cStr, x, digest );
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
   for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
       [output appendFormat:@"%02x", digest[i]];
      return  output;
}
+ (UIColor *)colorWithHexString: (NSString *)color{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    if ([cString hasPrefix:@"0X"])
    cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
    cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
    return [UIColor clearColor];
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}
+ (BOOL)isBlankString:(NSString *)string {
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if (string == nil || string == NULL||[string isEqualToString:@""]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}
+(UIImage *)getImageWithBgColor:(UIColor *)color{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
+(float)textWidthByString:(NSString *)calculatorString sizeFont:(NSInteger )font layoutWidth:(CGFloat)layoutWidth spaceWidth:(CGFloat)spaceWidth;
{
    if (![CommonClass isBlankString:calculatorString]) {
        CGSize titleSize = [calculatorString boundingRectWithSize:CGSizeMake(layoutWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil].size;
        return titleSize.width+spaceWidth;
    }else{
        return 10;
    }
}
+(NSMutableAttributedString *)setBasicTitle:(NSString *)basicTitle homeTitle:(NSString *)homeTitle changeTitle:(NSString *)changeTitle  color:(UIColor *)getColor size:(NSInteger )sizeW isBold:(BOOL)isBold{
    NSString *textContent=[NSString stringWithFormat:@"%@%@%@",basicTitle,changeTitle,homeTitle];
    NSRange range=[textContent rangeOfString:[NSString stringWithFormat:@"%@",changeTitle]];
    NSMutableAttributedString *att = [[NSMutableAttributedString alloc] initWithString:textContent];
    if (isBold)
         [att addAttributes:@{NSForegroundColorAttributeName:getColor,NSFontAttributeName: [UIFont fontWithName:@"ArialRoundedMTBold"  size:(sizeW)]}  range:range];
    else
       [att addAttributes:@{NSForegroundColorAttributeName:getColor,NSFontAttributeName: [UIFont fontWithName:@"ArialMT"  size:(sizeW)]}  range:range];
    return att;
}
+(NSMutableAttributedString *)setTitle:(NSString *)title color:(UIColor *)color{
    NSMutableAttributedString *AttributedString = [[NSMutableAttributedString alloc] initWithString:title];
    NSRange titleRange = {0,[AttributedString length]};
    [AttributedString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:titleRange];
    [AttributedString addAttribute:NSUnderlineColorAttributeName value:color range:NSMakeRange(0,[AttributedString length])];
    return AttributedString;
}
+(NSMutableAttributedString *)setTitle:(NSString *)title lineSpace:(CGFloat )lineSpace textSpace:(CGFloat )textSpace{
    NSDictionary *dic = @{NSKernAttributeName:@(textSpace)};
    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:title attributes:dic];
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [title length])];
    return attributedString;
}
+(UIViewController *)getTopCurrentViewController{
    return [CommonClass topViewControllerWithRootViewController:[CommonClass getCurrentVC]];
}
- (UIViewController*)viewControllerFromView:(UIView *)view{
    for (UIView* next = [view superview];
         next;
         next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}
+ (UIViewController *)getCurrentVC{
    UIViewController *result = nil;
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal){
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows){
            if (tmpWin.windowLevel == UIWindowLevelNormal){
                window = tmpWin;
                break;
            }
        }
    }
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    return result;
}
+ (UIViewController*)topViewControllerWithRootViewController:(UIViewController*)rootViewController{
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)rootViewController;
        return [CommonClass topViewControllerWithRootViewController:tabBarController.selectedViewController];
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController* navigationController = (UINavigationController*)rootViewController;
        return [CommonClass topViewControllerWithRootViewController:navigationController.visibleViewController];
    } else if (rootViewController.presentedViewController) {
        UIViewController* presentedViewController = rootViewController.presentedViewController;
        return [CommonClass topViewControllerWithRootViewController:presentedViewController];
    } else {
        return rootViewController;
    }
}
+ (NSData *)compressOriginalImage:(UIImage *)image toMaxDataSizeKBytes:(CGFloat)size{
    NSData * data = UIImageJPEGRepresentation(image, 1.0);
    CGFloat dataKBytes = data.length/1000.0;
    CGFloat maxQuality = 0.9f;
    CGFloat lastData = dataKBytes;
    while (dataKBytes > size && maxQuality > 0.01f) {
        maxQuality = maxQuality - 0.01f;
        data = UIImageJPEGRepresentation(image, maxQuality);
        dataKBytes = data.length / 1000.0;
        if (lastData == dataKBytes) {
            break;
        }else{
            lastData = dataKBytes;
        }
    }
    return data;
}
@end
