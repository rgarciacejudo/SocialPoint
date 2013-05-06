

@import <AppKit/CPView.j>


@implementation ContentArea : CPView
{
	
}

- (id) initWithContent():contentView
{

	self = [[CPView alloc] initWithFrame:CGRectMake(0.0, 0.0, CGRectGetWidth([contentView bounds]) - 200.0, CGRectGetHeight([contentView bounds]) )];
    if(self){
    	[self setBackgroundColor:[CPColor blueColor]];
    	// This view will grow in both height an width.
    	[self setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    }
    return self;
}

@end
