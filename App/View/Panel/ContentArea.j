

@import <AppKit/CPView.j>


@implementation ContentArea : CPView
{
	
}

- (id) initWithContent():contentView
{

	self = [super initWithFrame:CGRectMake(0.0, 0.0, CGRectGetWidth([contentView bounds]) - 150, CGRectGetHeight([contentView bounds]) )];
    if(self){
    	[self setBackgroundColor:[CPColor darkGrayColor]];
    	// This view will grow in both height an width.
    	[self setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    }
    return self;
}

@end
