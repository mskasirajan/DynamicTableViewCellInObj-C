//
//  TVCustomCell.h
//  DyanamicTableViewCell
//
//  Created by kasirajan on 03/09/15.
//  Copyright © 2015 kasi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVCustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *bannerImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

- (void)setupWithDictionary:(NSDictionary *)dictionary;

@end
