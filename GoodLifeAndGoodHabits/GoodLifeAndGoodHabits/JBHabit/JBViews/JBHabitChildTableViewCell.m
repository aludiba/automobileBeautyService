//
//  JBHabitChildTableViewCell.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/13.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHabitChildTableViewCell.h"
#import "JBHabitModel.h"
@interface JBHabitChildTableViewCell()
@property(nonatomic, strong)UIView *JBBackView;
@property(nonatomic, strong)UIButton *JBDeleteBtn;
@property(nonatomic, strong)UIView *JBRemindView;
@property(nonatomic, strong)UILabel *JBCommentLbl;
@property(nonatomic, strong)UILabel *JBPlanTimeLbl;
@property(nonatomic, strong)UILabel *JBRemindLbl;
@end
@implementation JBHabitChildTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self JBsetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)JBsetContentView{
    self.contentView.backgroundColor = JBH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.JBBackView];
    [self.JBBackView addSubview:self.JBRemindView];
    [self.JBBackView addSubview:self.JBCommentLbl];
    [self.JBBackView addSubview:self.JBDeleteBtn];
    [self.JBBackView addSubview:self.JBPlanTimeLbl];
    [self.JBBackView addSubview:self.JBRemindLbl];
    
    [self.JBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(8);
        make.leading.equalTo(self.contentView).offset(16);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.bottom.equalTo(self.contentView).offset(-8);
    }];
    [self.JBRemindView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBBackView).offset(45);
        make.leading.equalTo(self.JBBackView).offset(16);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(30);
    }];
    [self.JBCommentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBBackView).offset(45);
        make.leading.equalTo(self.JBRemindView.mas_trailing).offset(10);
        make.trailing.equalTo(self.JBBackView).offset(-120);
        make.height.mas_equalTo(JBHEIGHT);
        make.bottom.equalTo(self.JBBackView).offset(-45);
    }];
    [self.JBDeleteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBBackView).offset(12.5);
        make.trailing.equalTo(self.JBBackView).offset(-10);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(20);
    }];
    [self.JBPlanTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBBackView).offset(45);
        make.trailing.equalTo(self.JBBackView).offset(-10);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(25);
    }];
    [self.JBRemindLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBPlanTimeLbl.mas_bottom).offset(12.5);
        make.trailing.equalTo(self.JBBackView).offset(-10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(20);
    }];
}
- (void)JBDeleteAction:(UIButton *)JBsender{
    if (self.JBeditBlock) {
        self.JBeditBlock(self);
    }
}
- (void)setJBhabitmodel:(JBHabitModel *)JBhabitmodel{
    _JBhabitmodel = JBhabitmodel;
    self.JBHabitType = _JBhabitmodel.JBType;
    if (self.JBHabitType == JBHabitChildTypeMotion){
        self.JBRemindView.backgroundColor = [UIColor redColor];
    }else if (self.JBHabitType == JBHabitChildTypeReadBook){
        self.JBRemindView.backgroundColor = [UIColor orangeColor];
    }else if (self.JBHabitType == JBHabitChildTypeMusicalInstruments){
        self.JBRemindView.backgroundColor = [UIColor yellowColor];
    }else if (self.JBHabitType == JBHabitChildTypeOthers){
        self.JBRemindView.backgroundColor = [UIColor greenColor];
    }
    self.JBPlanTimeLbl.text = _JBhabitmodel.JBPlanTime;
    self.JBCommentLbl.text = _JBhabitmodel.JBComment;
    CGSize JBSize = [self.JBCommentLbl sizeThatFits:CGSizeMake(JBWIDTH - 208, MAXFLOAT)];
    [self.JBCommentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(JBSize.height);
    }];
    [self.JBCommentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UIView *)JBBackView{
    if (!_JBBackView) {
        _JBBackView = [[UIView alloc] init];
        _JBBackView.backgroundColor = [UIColor whiteColor];
        _JBBackView.layer.masksToBounds = YES;
        _JBBackView.layer.cornerRadius = 8.0f;
    }
    return _JBBackView;
}
- (UIButton *)JBDeleteBtn{
    if (!_JBDeleteBtn) {
        _JBDeleteBtn = [[UIButton alloc] init];
        _JBDeleteBtn.backgroundColor = JBH_Color(242, 242, 242, 1);
        _JBDeleteBtn.layer.masksToBounds = YES;
        _JBDeleteBtn.layer.cornerRadius = 10.0f;
        [_JBDeleteBtn setTitle:NSLocalizedString(@"删除", nil) forState:UIControlStateNormal];
        [_JBDeleteBtn.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [_JBDeleteBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_JBDeleteBtn addTarget:self action:@selector(JBDeleteAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBDeleteBtn;
}
- (UIView *)JBRemindView{
    if (!_JBRemindView) {
        _JBRemindView = [[UIView alloc] init];
        _JBRemindView.layer.masksToBounds = YES;
        _JBRemindView.layer.cornerRadius = 15.0f;
    }
    return _JBRemindView;
}
- (UILabel *)JBCommentLbl{
    if (!_JBCommentLbl) {
        _JBCommentLbl = [[UILabel alloc] init];
        _JBCommentLbl.textColor = [UIColor blackColor];
        _JBCommentLbl.font = [UIFont systemFontOfSize:28];
        _JBCommentLbl.numberOfLines = 0;
        [_JBRemindLbl sizeToFit];
    }
    return _JBCommentLbl;
}
- (UILabel *)JBPlanTimeLbl{
    if (!_JBPlanTimeLbl) {
        _JBPlanTimeLbl = [[UILabel alloc] init];
        _JBPlanTimeLbl.font = [UIFont systemFontOfSize:20];
        _JBPlanTimeLbl.textColor = [UIColor blackColor];
        _JBPlanTimeLbl.textAlignment = NSTextAlignmentRight;
    }
    return _JBPlanTimeLbl;
}
- (UILabel *)JBRemindLbl{
    if (!_JBRemindLbl) {
        _JBRemindLbl = [[UILabel alloc] init];
        _JBRemindLbl.font = [UIFont systemFontOfSize:16];
        _JBRemindLbl.textColor = [UIColor grayColor];
        _JBRemindLbl.text = NSLocalizedString(@"坚持(天)", nil);
        _JBRemindLbl.textAlignment = NSTextAlignmentRight;
    }
    return _JBRemindLbl;
}
@end
