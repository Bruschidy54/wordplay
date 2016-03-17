//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Dylan Bruschi on 3/14/16.
//  Copyright © 2016 Dylan Bruschi. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController () 
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.text = [NSString stringWithFormat:@"One day, %@ was walking into Mobile Makers when he noticed how %@ his students were, so he decided to %@ %@.",[[NSMutableAttributedString alloc] initWithString:_name], [[NSMutableAttributedString alloc] initWithString:_adjective], _verb, _adverb];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
