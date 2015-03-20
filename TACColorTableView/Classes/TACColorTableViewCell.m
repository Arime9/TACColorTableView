//
//  TACColorTableViewCell.m
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACColorTableViewCell.h"

@implementation TACColorTableViewCell

- (void)awaker {
    CGRect selfFrame = self.frame;
    self.transform = CGAffineTransformMakeRotation(M_PI / 2);
    self.frame = selfFrame;
    
    self.subContentView.layer.cornerRadius = self.subContentView.frame.size.width / 2;
    self.subContentView.layer.masksToBounds = YES;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    if (selected) {
        self.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        self.accessoryType = UITableViewCellAccessoryNone;
    }
}

- (void)setRoomColor:(NSDictionary *)roomColor {
    _roomColorId = roomColor[@"roomColorId"];
    _roomColorName = roomColor[@"roomColorName"];
    switch (_indexPath.row) {
        case RoomColorOrange:
            self.subContentView.backgroundColor = [UIColor magentaColor];
            break;
        case RoomColorPink:
            self.subContentView.backgroundColor = [UIColor orangeColor];
            break;
        case RoomColorBlue:
            self.subContentView.backgroundColor = [UIColor blueColor];
            break;
        case RoomColorBlack:
            self.subContentView.backgroundColor = [UIColor blackColor];
            break;
        case RoomColorWhite:
            self.subContentView.backgroundColor = [UIColor grayColor];
            break;
    }
}

@end
