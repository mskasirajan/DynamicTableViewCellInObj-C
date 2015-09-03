//
//  TVCustomCell.m
//  DyanamicTableViewCell
//
//  Created by kasirajan on 03/09/15.
//  Copyright © 2015 kasi. All rights reserved.
//

#import "TVCustomCell.h"

@implementation TVCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setupWithDictionary:(NSDictionary *)dictionary {
    
    self.bannerImageView.image = [UIImage imageNamed:[dictionary valueForKey:@"image"]];
    self.titleLabel.text = [dictionary valueForKey:@"title"];

    [self.descLabel setText:[dictionary valueForKey:@"desc"]];
    [self.descLabel sizeToFit];
}

- (IBAction)shareAction:(id)sender {
    NSLog(@"Share Action...");
}

@end
