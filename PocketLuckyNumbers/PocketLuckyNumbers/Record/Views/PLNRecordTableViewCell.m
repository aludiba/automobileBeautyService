//
//  PLNRecordTableViewCell.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2020/1/3.
//  Copyright © 2020 com. All rights reserved.
//

#import "PLNRecordTableViewCell.h"
@interface PLNRecordTableViewCell()
@property(nonatomic, strong)UIView *PLNBackView;//背景板
@property(nonatomic, assign)UILabel *PLNMinNumberLabel;//最小数标签
@property(nonatomic, assign)UILabel *PLNMaxNumberLabel;//最大数标签
@property(nonatomic, assign)UILabel *PLNGeneratedNumberLabel;//当前生成数标签
@property(nonatomic, strong)UILabel *PLNGenTimeLabel;//数字产生时间标签
@property(nonatomic, strong)UIButton *PLNDeleteButton;//删除
@end
@implementation PLNRecordTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
