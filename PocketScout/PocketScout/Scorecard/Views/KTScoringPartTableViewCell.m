//
//  KTScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTScoringPartTableViewCell.h"
#import "KTScorecardViewModel.h"

@interface KTScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *KTRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *KTRightScoreAddButton;//右边得分按钮
@property(nonatomic, strong)UIButton *KTRightScoreReduceButton;//右边减分按钮

@property(nonatomic, strong)UILabel *KTLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *KTLeftScoreAddButton;//左边得分按钮
@property(nonatomic, strong)UIButton *KTLeftScoreReduceButton;//左边减分按钮
@end
@implementation KTScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self KTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)KTSetContentView{
    [self.contentView addSubview:self.KTRightScoreLabel];
    [self.contentView addSubview:self.KTRightScoreAddButton];
    [self.contentView addSubview:self.KTRightScoreReduceButton];
    [self.contentView addSubview:self.KTLeftScoreLabel];
    [self.contentView addSubview:self.KTLeftScoreAddButton];
    [self.contentView addSubview:self.KTLeftScoreReduceButton];
    
    
}
- (void)setKTModel:(KTScorecardViewModel *)KTModel{
    _KTModel = KTModel;
    
}
#pragma mark - 属性懒加载
- (UILabel *)KTRightScoreLabel{
    if (!_KTRightScoreLabel) {
        _KTRightScoreLabel = [[UILabel alloc] init];
        _KTRightScoreLabel.backgroundColor = KTH_Color(0, 204, 131, 1);
        _KTRightScoreLabel.textColor = [UIColor whiteColor];
        _KTRightScoreLabel.font = [UIFont systemFontOfSize:25];
        _KTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _KTRightScoreLabel.layer.cornerRadius = 4.0f;
        _KTRightScoreLabel.layer.masksToBounds = YES;
    }
    return _KTRightScoreLabel;
}
- (UIButton *)KTRightScoreAddButton{
    if (!_KTRightScoreAddButton) {
        _KTRightScoreAddButton = [[UIButton alloc] init];
        [_KTRightScoreAddButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KTRightScoreAddButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _KTRightScoreAddButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _KTRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _KTRightScoreAddButton.layer.cornerRadius = 3.0f;
        _KTRightScoreAddButton.layer.masksToBounds = YES;
        _KTRightScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTRightScoreAddButton.layer.borderWidth = 1.5f;
    }
    return _KTRightScoreAddButton;
}
- (UIButton *)KTRightScoreReduceButton{
    if (!_KTRightScoreReduceButton) {
        _KTRightScoreReduceButton = [[UIButton alloc] init];
        [_KTRightScoreReduceButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KTRightScoreReduceButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _KTRightScoreReduceButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _KTRightScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTRightScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _KTRightScoreReduceButton.layer.cornerRadius = 3.0f;
        _KTRightScoreReduceButton.layer.masksToBounds = YES;
        _KTRightScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTRightScoreReduceButton.layer.borderWidth = 1.5f;
    }
    return _KTRightScoreReduceButton;
}
- (UILabel *)KTLeftScoreLabel{
    if (!_KTLeftScoreLabel) {
        _KTLeftScoreLabel = [[UILabel alloc] init];
        _KTLeftScoreLabel.backgroundColor = KTH_Color(0, 204, 131, 1);
        _KTLeftScoreLabel.textColor = [UIColor whiteColor];
        _KTLeftScoreLabel.font = [UIFont systemFontOfSize:25];
        _KTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _KTLeftScoreLabel.layer.cornerRadius = 4.0f;
        _KTLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _KTLeftScoreLabel;
}
- (UIButton *)KTLeftScoreAddButton{
    if (!_KTLeftScoreAddButton) {
        _KTLeftScoreAddButton = [[UIButton alloc] init];
        [_KTLeftScoreAddButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KTLeftScoreAddButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _KTLeftScoreAddButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _KTLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _KTLeftScoreAddButton.layer.cornerRadius = 3.0f;
        _KTLeftScoreAddButton.layer.masksToBounds = YES;
        _KTLeftScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTLeftScoreAddButton.layer.borderWidth = 1.5f;
    }
    return _KTLeftScoreAddButton;
}
- (UIButton *)KTLeftScoreReduceButton{
    if (!_KTLeftScoreReduceButton) {
        _KTLeftScoreReduceButton = [[UIButton alloc] init];
        [_KTLeftScoreReduceButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KTLeftScoreReduceButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _KTLeftScoreReduceButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _KTLeftScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTLeftScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _KTLeftScoreReduceButton.layer.cornerRadius = 3.0f;
        _KTLeftScoreReduceButton.layer.masksToBounds = YES;
        _KTLeftScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTLeftScoreReduceButton.layer.borderWidth = 1.5f;
    }
    return _KTLeftScoreReduceButton;
}
@end
