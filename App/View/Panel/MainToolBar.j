

@import <AppKit/CPView.j>


@implementation MainToolBar : CPView
{
	
}

- (id) initWithContent():contentView
{

	self = [[CPView alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, CGRectGetHeight([contentView bounds]) )];
    if(self){
    	[self setBackgroundColor:[CPColor yellow]];
    	// This view will grow in both height an width.
    	//[self setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    }
    return self;
}

@end
