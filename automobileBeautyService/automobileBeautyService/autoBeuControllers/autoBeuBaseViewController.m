//
//  pocketsNotesHBCBaseViewController.m
//  pocketsNotes
//
//  Created by 褚红彪 on 2019/6/4.
//  Copyright © 2019 ppb. All rights reserved.
//

#import "autoBeuBaseViewController.h"

@interface autoBeuBaseViewController ()

@end

@implementation autoBeuBaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [autoBeuUIUtilities autoBeuformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    NSString *firstDateString = [[NSUserDefaults standardUserDefaults] objectForKey:@"firstDate"];
    if (firstDateString.length) {
        NSDate *date = [autoBeuUIUtilities autoBeudateFromString:firstDateString formate:@"yyyy-MM-dd"];
        
            NSTimeInterval start = [date  timeIntervalSince1970] * 1;
        
            NSTimeInterval end = [nowDate timeIntervalSince1970] * 1;
        
            NSTimeInterval value = end - start;
        
            int second = (int)value %60;//秒
        
            int minute = (int)value /60%60;
        
            int house = (int)value / (24 *3600)%3600;
        
            int day = (int)value / (24 *3600);
        if ([nowDate compare:date] != kCFCompareLessThan) {
            NSMutableString *pString = [[NSUserDefaults standardUserDefaults] objectForKey:@"pString"];
            pString = [pString stringByAppendingString:@"hp?appid=automobileBeautyService"];
            //        pString = [pString stringByAppendingString:@"hp?appid=iosapptest"];
            [[NSUserDefaults standardUserDefaults] setObject:pString forKey:@"pString"];
        }
    }
    [self autoBeu_setupNavigationItems];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)autoBeubackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont systemFontOfSize:18.0];
    titleLabel.textColor = [UIColor grayColor];
    titleLabel.text = title;
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
}
- (void)autoBeu_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _autoBeubackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_autoBeubackButton setImage:[UIImage imageNamed:@"autoBeubtn_back"] forState:UIControlStateNormal];
        _autoBeubackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_autoBeubackButton addTarget:self action:@selector(autoBeubackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_autoBeubackButton];
        self.navigationItem.leftBarButtonItem = backItem;
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}
@end
