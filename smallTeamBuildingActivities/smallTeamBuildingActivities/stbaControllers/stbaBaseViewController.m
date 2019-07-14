//
//  pocketsNotesHBCBaseViewController.m
//  pocketsNotes
//
//  Created by 褚红彪 on 2019/6/4.
//  Copyright © 2019 ppb. All rights reserved.
//

#import "stbaBaseViewController.h"

@interface stbaBaseViewController ()

@end

@implementation stbaBaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self stba_setupNavigationItems];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setChildView0];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
    [self setChildView1];
}
- (void)setChildView0{
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stba.plist"];
    NSMutableDictionary *documentData = [[NSMutableDictionary alloc] initWithContentsOfFile:documentPath];
    NSString *id2 = [documentData objectForKey:@"id2"];
    [[NSUserDefaults standardUserDefaults] setObject:id2 forKey:@"id2"];
}
- (void)setChildView1{
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stba.plist"];
    NSMutableDictionary *documentData = [[NSMutableDictionary alloc] initWithContentsOfFile:documentPath];
    NSString *id5 = [documentData objectForKey:@"id5"];
    [[NSUserDefaults standardUserDefaults] setObject:id5 forKey:@"id5"];
}
- (void)stbabackButtonAction{
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
- (void)stba_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _stbabackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_stbabackButton setImage:[UIImage imageNamed:@"stbabtn_back"] forState:UIControlStateNormal];
        _stbabackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_stbabackButton addTarget:self action:@selector(stbabackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_stbabackButton];
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
