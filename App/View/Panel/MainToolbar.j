//Commet GITHUB RGARCIA 07/05/2013

@import <AppKit/CPView.j>
@import <AppKit/CPBox.j>
@import "ToolBarPanel.j"


@implementation MainToolBar : CPView
{
	
}

- (id) initWithContent():contentView
{

	self = [super initWithFrame:CGRectMake(0.0, 0.0, CGRectGetWidth([contentView bounds]),100.0 )];
    if(self){
    	//[self setBackgroundColor:[CPColor lightGrayColor]];
    	[self setAutoresizingMask:CPViewWidthSizable];

    	var documentPanel = [[ToolBarPanel alloc] initWithFrame: CGRectMake( 0.0 ,5.0, 200.0, 90) andName:@"Documento"];

    	var buttonAddImage = [[CPImage alloc] initWithContentsOfFile:"Resources/icon/new.png"];

    	var buttonAdd = [[CPButton alloc] initWithFrame:CGRectMake(0,0,80,60)];
    	[buttonAdd setTitle:@"Agregar"];
    	[buttonAdd setImage:buttonAddImage];
    	[buttonAdd setImagePosition:CPImageAbove];
    	[buttonAdd setTransparent:YES];

    	[documentPanel addElement:buttonAdd];

    	[self addSubview:documentPanel];
    }
    return self;
}

@end
