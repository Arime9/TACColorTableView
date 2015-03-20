//
//  TACColorTableViewCell.h
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TACColorTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIView *subContentView;

@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, copy) NSString *roomColorId;
@property (nonatomic, copy) NSString *roomColorName;

- (void)setRoomColor:(NSDictionary *)roomColor;

@end
