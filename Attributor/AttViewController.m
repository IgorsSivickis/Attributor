//
//  AttViewController.m
//  Attributor
//
//  Created by Igors.Sivickis on 5/7/14.
//  Copyright (c) 2014 accenture. All rights reserved.
//

#import "AttViewController.h"

@interface AttViewController ()
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UILabel *headLine;

@end

@implementation AttViewController
- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender
{
        [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                      value:sender.backgroundColor
                                      range:self.body.selectedRange];
}


- (IBAction)outlineBodySelection:(id)sender
{
    [self.body.textStorage addAttributes:@{ NSStrokeWidthAttributeName: @-3,
                                            NSStrokeColorAttributeName: [UIColor blackColor]} range:self.body.selectedRange];
}

- (IBAction)unoutlineBodySelection:(id)sender
{
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
                                     range:self.body.selectedRange];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



@end
