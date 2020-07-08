//
//  LBTeamListTableViewCell.m
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBTeamListTableViewCell.h"
#import "LBTeamModel.h"
@interface LBTeamListTableViewCell()
@property(nonatomic, strong)UILabel *LBteamNameLbl;
@property(nonatomic, strong)UILabel *LBteamNoteLbl;
@property(nonatomic, strong)UIView *LBline;
@end
@implementation LBTeamListTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBsetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)LBsetContentView{
    [self.contentView addSubview:self.LBteamNameLbl];
    [self.contentView addSubview:self.LBteamNoteLbl];
    [self.contentView addSubview:self.LBline];
    
    [self.LBteamNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(16);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.LBteamNoteLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.LBteamNameLbl.mas_bottom).offset(12);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(0);
    }];
    [self.LBline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.LBteamNoteLbl.mas_bottom).offset(15);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(1);
        make.bottom.equalTo(self.contentView);
    }];
}
- (void)setLBteammodel:(LBTeamModel *)LBteammodel{
    _LBteammodel = LBteammodel;
    self.LBteamNameLbl.text = [NSString stringWithFormat:@"队伍名称：%@",_LBteammodel.LBteamName];
    self.LBteamNoteLbl.text = [NSString stringWithFormat:@"备注：%@",_LBteammodel.LBnote];
    [self.LBteamNoteLbl sizeToFit];
    CGSize LBsize = [self.LBteamNoteLbl sizeThatFits:CGSizeMake(LBWIDTH - 32, MAXFLOAT)];
    [self.LBteamNoteLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(LBsize.height);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)LBteamNameLbl{
    if (!_LBteamNameLbl) {
        _LBteamNameLbl = [[UILabel alloc] init];
        _LBteamNameLbl.textColor = [UIColor blackColor];
        _LBteamNameLbl.font = [UIFont systemFontOfSize:18];
        _LBteamNameLbl.numberOfLines = 0;
    }
    return _LBteamNameLbl;
}
- (UILabel *)LBteamNoteLbl{
    if (!_LBteamNoteLbl) {
        _LBteamNoteLbl = [[UILabel alloc] init];
        _LBteamNoteLbl.textColor = [UIColor grayColor];
        _LBteamNoteLbl.font = [UIFont systemFontOfSize:20];
        _LBteamNoteLbl.numberOfLines = 0;
    }
    return _LBteamNoteLbl;
}
- (UIView *)LBline{
    if (!_LBline) {
        _LBline = [[UIView alloc] init];
        _LBline.backgroundColor = LBH_Color(242, 242, 242, 1);
    }
    return _LBline;
}
@end
