//
//  ViewController.m
//  DyanamicTableViewCell
//
//  Created by kasirajan on 03/09/15.
//  Copyright © 2015 kasi. All rights reserved.
//

#import "ViewController.h"
#import "TVCustomCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *locationsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSError *error;
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"location" ofType:@"json"]];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    
    self.locationsArray = json[@"location"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.locationsArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIFont *font = [UIFont fontWithName:@"Helvetica" size:13];
    NSString *descText = _locationsArray[indexPath.row][@"desc"];
    CGRect boundingRect = [descText boundingRectWithSize:CGSizeMake(268, 4000)
                                         options:NSStringDrawingUsesLineFragmentOrigin
                                      attributes:@{NSFontAttributeName:font}
                                         context:nil];
    
    CGSize boundingSize = boundingRect.size;

    return (200-15+boundingSize.height);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CustomCell";
    TVCustomCell *cell = (TVCustomCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    [cell setupWithDictionary:[self.locationsArray objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
