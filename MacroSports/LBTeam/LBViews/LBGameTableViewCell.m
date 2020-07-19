//
//  LBGameTableViewCell.m
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBGameTableViewCell.h"
#import "LBGameModel.h"

@interface LBGameTableViewCell()
@property(nonatomic, strong)UILabel *LBaTeamNameLbl;
@property(nonatomic, strong)UILabel *LBaTeamScoreLbl;
@property(nonatomic, strong)UILabel *LBVSLbl;
@property(nonatomic, strong)UILabel *LBbTeamNameLbl;
@property(nonatomic, strong)UILabel *LBbTeamScoreLbl;
@property(nonatomic, strong)UILabel *LBendTimeLbl;
@property(nonatomic, strong)UIView *LBline;
@end
@implementation LBGameTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.LBaTeamNameLbl];
        [self.contentView addSubview:self.LBaTeamScoreLbl];
        [self.contentView addSubview:self.LBVSLbl];
        [self.contentView addSubview:self.LBbTeamNameLbl];
        [self.contentView addSubview:self.LBbTeamScoreLbl];
        [self.contentView addSubview:self.LBendTimeLbl];
        [self.contentView addSubview:self.LBline];
        
        [self.LBaTeamNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(20);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(LBWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(20);
        }];
        [self.LBaTeamScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.LBaTeamNameLbl.mas_bottom).offset(20);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(LBWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(22);
        }];
        [self.LBVSLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(_LBaTeamScoreLbl);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(30);
        }];
        [self.LBbTeamNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(20);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.width.mas_equalTo(LBWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(20);
        }];
        [self.LBbTeamScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.LBbTeamNameLbl.mas_bottom).offset(20);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.width.mas_equalTo(LBWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(22);
        }];
        [self.LBendTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.LBbTeamScoreLbl.mas_bottom).offset(20);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.LBline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.LBendTimeLbl.mas_bottom).offset(20);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - actions
- (void)setLBgamemodel:(LBGameModel *)LBgamemodel{
    _LBgamemodel = LBgamemodel;
    self.LBaTeamNameLbl.text = _LBgamemodel.LBaTeamName;
    self.LBaTeamScoreLbl.text = _LBgamemodel.LBaTeamScore;
    self.LBbTeamNameLbl.text = _LBgamemodel.LBbTeamName;
    self.LBbTeamScoreLbl.text = _LBgamemodel.LBbTeamScore;
    self.LBendTimeLbl.text = _LBgamemodel.LBendDateTime;
}
#pragma mark - 属性懒加载
- (UILabel *)LBaTeamNameLbl{
    if (!_LBaTeamNameLbl) {
        _LBaTeamNameLbl = [[UILabel alloc] init];
        _LBaTeamNameLbl.textColor = [UIColor blackColor];
        _LBaTeamNameLbl.font = [UIFont systemFontOfSize:16];
        _LBaTeamNameLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBaTeamNameLbl;
}
- (UILabel *)LBaTeamScoreLbl{
    if (!_LBaTeamScoreLbl) {
        _LBaTeamScoreLbl = [[UILabel alloc] init];
        _LBaTeamScoreLbl.textColor = [UIColor blackColor];
        _LBaTeamScoreLbl.font = [UIFont boldSystemFontOfSize:20];
        _LBaTeamScoreLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBaTeamScoreLbl;
}
- (UILabel *)LBVSLbl{
    if (!_LBVSLbl) {
        _LBVSLbl = [[UILabel alloc] init];
        _LBVSLbl.textColor = [UIColor blackColor];
        _LBVSLbl.font = [UIFont systemFontOfSize:22];
        _LBVSLbl.textAlignment = NSTextAlignmentCenter;
        _LBVSLbl.text = @"VS";
    }
    return _LBVSLbl;
}
- (UILabel *)LBbTeamNameLbl{
    if (!_LBbTeamNameLbl) {
        _LBbTeamNameLbl = [[UILabel alloc] init];
        _LBbTeamNameLbl.textColor = [UIColor blackColor];
        _LBbTeamNameLbl.font = [UIFont systemFontOfSize:16];
        _LBbTeamNameLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBbTeamNameLbl;
}
- (UILabel *)LBbTeamScoreLbl{
    if (!_LBbTeamScoreLbl) {
        _LBbTeamScoreLbl = [[UILabel alloc] init];
        _LBbTeamScoreLbl.textColor = [UIColor blackColor];
        _LBbTeamScoreLbl.font = [UIFont boldSystemFontOfSize:20];
        _LBbTeamScoreLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBbTeamScoreLbl;
}
- (UILabel *)LBendTimeLbl{
    if (!_LBendTimeLbl) {
        _LBendTimeLbl = [[UILabel alloc] init];
        _LBendTimeLbl.textColor = [UIColor grayColor];
        _LBendTimeLbl.font = [UIFont systemFontOfSize:16];
        _LBendTimeLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBendTimeLbl;
}
- (UIView *)LBline{
    if (!_LBline) {
        _LBline = [[UIView alloc] init];
        _LBline.backgroundColor = LBH_Color(242, 242, 242, 1);
    }
    return _LBline;
}
@end
