//
//  GAVolleyballScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "GAVolleyballScoreSummaryTableViewCell.h"
#import "GAVolleyballScorecardViewModel.h"

@interface GAVolleyballScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *GAFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *GAFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *GASecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *GASecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *GAThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *GAThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *GAFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *GAFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *GAFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *GAFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *GATotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *GATotalScoreContentLbl;//总比分内容
@end

@implementation GAVolleyballScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:self.GAFirstTitleLbl];
        [self.contentView addSubview:self.GAFirstContentLbl];
        [self.contentView addSubview:self.GASecondTitleLbl];
        [self.contentView addSubview:self.GASecondContentLbl];
        [self.contentView addSubview:self.GAThirdTitleLbl];
        [self.contentView addSubview:self.GAThirdContentLbl];
        [self.contentView addSubview:self.GAFourthTitleLbl];
        [self.contentView addSubview:self.GAFourthContentLbl];
        [self.contentView addSubview:self.GAFifthTitleLbl];
        [self.contentView addSubview:self.GAFifthContentLbl];
        [self.contentView addSubview:self.GATotalScoreTitleLbl];
        [self.contentView addSubview:self.GATotalScoreContentLbl];
        
        [self.GAFirstTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(GAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.GAFirstContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GAFirstTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
           make.top.equalTo(self.contentView).offset(10);
                make.height.mas_equalTo(20);
        }];
        [self.GASecondTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.GAFirstTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(GAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.GASecondContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GASecondTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.GAFirstContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.GAThirdTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.GASecondTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(GAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.GAThirdContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GAThirdTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.GASecondContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.GAFourthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.GAThirdTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(GAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.GAFourthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GAFourthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.GAThirdContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.GAFifthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.GAFourthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(GAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.GAFifthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GAFifthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.GAFourthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.GATotalScoreTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.GAFifthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(GAWIDTH);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.GATotalScoreContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GATotalScoreTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.GAFifthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setGAModel:(GAVolleyballScorecardViewModel *)GAModel{
    _GAModel = GAModel;
    for (int i = 0; i < _GAModel.GABureauPointsArray.count; i++) {
        GAVolleyballBureauPointsModel *bureauPointsModel = _GAModel.GABureauPointsArray[i];
        if (bureauPointsModel.GAIndex == 0) {
            if (bureauPointsModel.GAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.GAFirstContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.GAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.GAIndex == 1){
            if (bureauPointsModel.GAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.GASecondContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.GAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.GAIndex == 2){
            if (bureauPointsModel.GAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.GAThirdContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.GAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.GAIndex == 3){
            if (bureauPointsModel.GAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.GAFourthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.GAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.GAIndex == 4){
            if (bureauPointsModel.GAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.GAFifthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.GAtBureauScoreString,deadEvenString];
            }
        }
    }
    if (_GAModel.totalAcoreString.length) {
        self.GATotalScoreContentLbl.text = _GAModel.totalAcoreString;
    }
    CGSize size = [self.GAFirstTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.GAFirstTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GAFirstTitleLbl layoutIfNeeded];
    size = [self.GASecondTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.GASecondTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GASecondTitleLbl layoutIfNeeded];
    size = [self.GAThirdTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.GAThirdTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GAThirdTitleLbl layoutIfNeeded];
    size = [self.GAFourthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.GAFourthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GAFourthTitleLbl layoutIfNeeded];
    size = [self.GAFifthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.GAFifthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GAFifthTitleLbl layoutIfNeeded];
    size = [self.GATotalScoreTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.GATotalScoreTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GATotalScoreTitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)GAFirstTitleLbl{
    if (!_GAFirstTitleLbl) {
        _GAFirstTitleLbl = [[UILabel alloc] init];
        [_GAFirstTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _GAFirstTitleLbl.textColor = [UIColor blackColor];
        _GAFirstTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _GAFirstTitleLbl.numberOfLines = 0;
        _GAFirstTitleLbl.text = NSLocalizedString(@"第一局", nil);
        [_GAFirstTitleLbl sizeToFit];
    }
    return _GAFirstTitleLbl;
}
- (UILabel *)GAFirstContentLbl{
    if (!_GAFirstContentLbl) {
        _GAFirstContentLbl = [[UILabel alloc] init];
        [_GAFirstContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _GAFirstContentLbl.textColor = [UIColor blackColor];
        _GAFirstContentLbl.backgroundColor = [UIColor systemGreenColor];
        _GAFirstContentLbl.numberOfLines = 0;
        _GAFirstContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_GAFirstContentLbl sizeToFit];
    }
    return _GAFirstContentLbl;
}
- (UILabel *)GASecondTitleLbl{
    if (!_GASecondTitleLbl) {
        _GASecondTitleLbl = [[UILabel alloc] init];
        [_GASecondTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _GASecondTitleLbl.textColor = [UIColor blackColor];
        _GASecondTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _GASecondTitleLbl.numberOfLines = 0;
        _GASecondTitleLbl.text = NSLocalizedString(@"第二局", nil);
        [_GASecondTitleLbl sizeToFit];
    }
    return _GASecondTitleLbl;
}
- (UILabel *)GASecondContentLbl{
    if (!_GASecondContentLbl) {
        _GASecondContentLbl = [[UILabel alloc] init];
        [_GASecondContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _GASecondContentLbl.textColor = [UIColor blackColor];
        _GASecondContentLbl.backgroundColor = [UIColor systemGreenColor];
        _GASecondContentLbl.numberOfLines = 0;
        _GASecondContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_GASecondContentLbl sizeToFit];
    }
    return _GASecondContentLbl;
}
- (UILabel *)GAThirdTitleLbl{
    if (!_GAThirdTitleLbl) {
        _GAThirdTitleLbl = [[UILabel alloc] init];
        [_GAThirdTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _GAThirdTitleLbl.textColor = [UIColor blackColor];
        _GAThirdTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _GAThirdTitleLbl.numberOfLines = 0;
        _GAThirdTitleLbl.text = NSLocalizedString(@"第三局", nil);
        [_GAThirdTitleLbl sizeToFit];
    }
    return _GAThirdTitleLbl;
}
- (UILabel *)GAThirdContentLbl{
    if (!_GAThirdContentLbl) {
        _GAThirdContentLbl = [[UILabel alloc] init];
        [_GAThirdContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _GAThirdContentLbl.textColor = [UIColor blackColor];
        _GAThirdContentLbl.backgroundColor = [UIColor systemGreenColor];
        _GAThirdContentLbl.numberOfLines = 0;
        _GAThirdContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_GAThirdContentLbl sizeToFit];
    }
    return _GAThirdContentLbl;
}
- (UILabel *)GAFourthTitleLbl{
    if (!_GAFourthTitleLbl) {
        _GAFourthTitleLbl = [[UILabel alloc] init];
        [_GAFourthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _GAFourthTitleLbl.textColor = [UIColor blackColor];
        _GAFourthTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _GAFourthTitleLbl.numberOfLines = 0;
        _GAFourthTitleLbl.text = NSLocalizedString(@"第四局", nil);
        [_GAFourthTitleLbl sizeToFit];
    }
    return _GAFourthTitleLbl;
}
- (UILabel *)GAFourthContentLbl{
    if (!_GAFourthContentLbl) {
        _GAFourthContentLbl = [[UILabel alloc] init];
        [_GAFourthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _GAFourthContentLbl.textColor = [UIColor blackColor];
        _GAFourthContentLbl.backgroundColor = [UIColor systemGreenColor];
        _GAFourthContentLbl.numberOfLines = 0;
        _GAFourthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_GAFourthContentLbl sizeToFit];
    }
    return _GAFourthContentLbl;
}
- (UILabel *)GAFifthTitleLbl{
    if (!_GAFifthTitleLbl) {
        _GAFifthTitleLbl = [[UILabel alloc] init];
        [_GAFifthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _GAFifthTitleLbl.textColor = [UIColor blackColor];
        _GAFifthTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _GAFifthTitleLbl.numberOfLines = 0;
        _GAFifthTitleLbl.text = NSLocalizedString(@"第五局", nil);
        [_GAFifthTitleLbl sizeToFit];
    }
    return _GAFifthTitleLbl;
}
- (UILabel *)GAFifthContentLbl{
    if (!_GAFifthContentLbl) {
        _GAFifthContentLbl = [[UILabel alloc] init];
        [_GAFifthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _GAFifthContentLbl.textColor = [UIColor blackColor];
        _GAFifthContentLbl.backgroundColor = [UIColor systemGreenColor];
        _GAFifthContentLbl.numberOfLines = 0;
        _GAFifthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_GAFifthContentLbl sizeToFit];
    }
    return _GAFifthContentLbl;
}
- (UILabel *)GATotalScoreTitleLbl{
    if (!_GATotalScoreTitleLbl) {
        _GATotalScoreTitleLbl = [[UILabel alloc] init];
        [_GATotalScoreTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _GATotalScoreTitleLbl.textColor = [UIColor blackColor];
        _GATotalScoreTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _GATotalScoreTitleLbl.numberOfLines = 0;
        _GATotalScoreTitleLbl.text = NSLocalizedString(@"总比分", nil);
        [_GATotalScoreTitleLbl sizeToFit];
    }
    return _GATotalScoreTitleLbl;
}
- (UILabel *)GATotalScoreContentLbl{
    if (!_GATotalScoreContentLbl) {
        _GATotalScoreContentLbl = [[UILabel alloc] init];
        [_GATotalScoreContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _GATotalScoreContentLbl.textColor = [UIColor blackColor];
        _GATotalScoreContentLbl.backgroundColor = [UIColor systemGreenColor];
        _GATotalScoreContentLbl.numberOfLines = 0;
        _GATotalScoreContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_GATotalScoreContentLbl sizeToFit];
    }
    return _GATotalScoreContentLbl;
}
@end
