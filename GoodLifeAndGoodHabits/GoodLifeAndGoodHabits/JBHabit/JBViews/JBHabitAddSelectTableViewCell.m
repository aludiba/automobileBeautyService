//
//  JBHabitAddSelectTableViewCell.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/13.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHabitAddSelectTableViewCell.h"
#import "JBHabitViewModel.h"

@interface JBHabitAddSelectTableViewCell()
@property(nonatomic, strong)UIView *JBBackView;
@property(nonatomic, strong)UILabel *JBTitleLbl;
@property(nonatomic, strong)UILabel *JBContentLbl;
@property(nonatomic, strong)UIImageView *JBSelectImgView;
@end
@implementation JBHabitAddSelectTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self JBsetContentView];
    }
    return self;
}
- (void)JBsetContentView{
    [self.contentView addSubview:self.JBBackView];
    [self.JBBackView addSubview:self.JBTitleLbl];
    [self.JBBackView addSubview:self.JBContentLbl];
    [self.JBBackView addSubview:self.JBSelectImgView];
    
    [self.JBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(10);
        make.leading.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.JBSelectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.JBBackView);
        make.trailing.equalTo(self.JBBackView).offset(-10);
        make.width.mas_equalTo(22);
        make.height.mas_equalTo(22);
    }];
    [self.JBContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBBackView).offset(2.5);
        make.leading.equalTo(self.JBBackView).offset(10);
        make.trailing.equalTo(self.JBSelectImgView.mas_leading).offset(-10);
        make.bottom.equalTo(self.JBBackView).offset(-2.5);
    }];
    [self.JBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBBackView).offset(5);
        make.leading.equalTo(self.JBBackView).offset(10);
        make.trailing.equalTo(self.JBSelectImgView.mas_leading).offset(-10);
        make.bottom.equalTo(self.JBBackView).offset(-5);
    }];
}
- (void)setJBViewModel:(JBHabitViewModel *)JBViewModel{
    _JBViewModel = JBViewModel;
    if (_JBViewModel.JBContent.length) {
        self.JBTitleLbl.hidden = YES;
        self.JBContentLbl.text = _JBViewModel.JBContent;
    }else{
        self.JBTitleLbl.hidden = NO;
        self.JBTitleLbl.text = _JBViewModel.JBDefault;
    }
    if (_JBViewModel.JBHabitType == JBHabitChildTypeAll) {
        self.JBSelectImgView.hidden = NO;
    }else{
        self.JBSelectImgView.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UIView *)JBBackView{
    if (!_JBBackView) {
        _JBBackView = [[UIView alloc] init];
        _JBBackView.backgroundColor = JBH_Color(242, 242, 242, 1);
        _JBBackView.layer.masksToBounds = YES;
        _JBBackView.layer.cornerRadius = 4.0f;
    }
    return _JBBackView;
}
- (UILabel *)JBTitleLbl{
    if (!_JBTitleLbl) {
        _JBTitleLbl = [[UILabel alloc] init];
        _JBTitleLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
        _JBTitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
    }
    return _JBTitleLbl;
}
- (UILabel *)JBContentLbl{
    if (!_JBContentLbl) {
        _JBContentLbl = [[UILabel alloc] init];
        _JBContentLbl.textColor = [UIColor blackColor];
        _JBContentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:20];
    }
    return _JBContentLbl;
}
- (UIImageView *)JBSelectImgView{
    if (!_JBSelectImgView) {
        _JBSelectImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"JBbtn_arrow"]];
    }
    return _JBSelectImgView;
}
@end
