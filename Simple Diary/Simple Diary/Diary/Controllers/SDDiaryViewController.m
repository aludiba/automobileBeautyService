//
//  SDDiaryViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDDiaryViewController.h"
#import "SDCalendarViewController.h"
#import "SDSearchViewController.h"
#import "SDWriteDiaryViewController.h"
@interface SDDiaryViewController ()
@property(nonatomic, strong)UIButton *calendarButton;
@property(nonatomic, strong)UIButton *searchButton;
@property(nonatomic, strong)UIButton *editorButton;
@end

@implementation SDDiaryViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"日记", nil);
}
- (void)SD_setupNavigationItems{
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *calendarItem = [[UIBarButtonItem alloc] initWithCustomView:self.calendarButton];
    UIBarButtonItem *fixWidthItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixWidthItem.width = 24;
    UIBarButtonItem *searchItem = [[UIBarButtonItem alloc] initWithCustomView:self.searchButton];
    self.navigationItem.leftBarButtonItems = @[calendarItem,fixWidthItem,searchItem];
    UIBarButtonItem *editorItem = [[UIBarButtonItem alloc] initWithCustomView:self.editorButton];
    self.navigationItem.rightBarButtonItem = editorItem;
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        SDCalendarViewController *cdVC = [[SDCalendarViewController alloc] init];
        cdVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:cdVC animated:YES];
    }else if (sender.tag == 101){
        SDSearchViewController *sVC = [[SDSearchViewController alloc] init];
        sVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:sVC animated:YES];
    }else if (sender.tag == 102){
        SDWriteDiaryViewController *wdVC = [[SDWriteDiaryViewController alloc] init];
        wdVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:wdVC animated:YES];
    }
}
#pragma mark - getters
- (UIButton *)calendarButton{
    if (!_calendarButton) {
        _calendarButton = [[UIButton alloc] init];
        _calendarButton.tag = 100;
        [_calendarButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_calendarButton setImage:[UIImage imageNamed:@"SD_calendar"] forState:UIControlStateNormal];
    }
    return _calendarButton;
}
- (UIButton *)searchButton{
    if (!_searchButton) {
        _searchButton = [[UIButton alloc] init];
        _searchButton.tag = 101;
        [_searchButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_searchButton setImage:[UIImage imageNamed:@"SD_search"] forState:UIControlStateNormal];
    }
    return _searchButton;
}
- (UIButton *)editorButton{
    if (!_editorButton) {
        _editorButton = [[UIButton alloc] init];
        _editorButton.tag = 102;
        [_editorButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editorButton setImage:[UIImage imageNamed:@"SD_edit"] forState:UIControlStateNormal];
    }
    return _editorButton;
}
@end
