#define area_quad
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var a = argument0;
var b = argument1;

return a * b;

#define area_circle
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var radius = argument0;
var homemadepi = 3.1415926535897932384626433832795028841971693993   //yum

return homemadepi * radius * radius;

#define peri_quad
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var a = argument0;
var b = argument1;

return 2 * (a+b);

#define todo
//todo

#define coordgeometry_midpoint
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var x1 = argument0;
var x2 = argument1;
var y1 = argument2;
var y2 = argument3;

var mx;
var my;

mx = x1 + x2;
my = y1 + y2;

return mx / 2 + my / 2;

#define coordgeometry_midpoint_singular
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var x1 = argument0;
var x2 = argument1;

var i = x1 + x2;

return i / 2;

#define anchor_x
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var pos = argument0;
var width = argument1;

if (pos == "left")
{
    return 0;
}

if (pos == "center")
{
    return room_width / 2 - width / 2;
}

if (pos == "right")
{
    return room_width - width;
}

#define anchor_y
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var pos = argument0;
var height = argument1;

if (pos == "top")
{
    return 0;
}

if (pos == "middle")
{
    return room_height / 2 - height / 2;
}

if (pos == "bottom")
{
    return room_height - height;
}

#define draw_rect
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var drawx = argument0;
var drawy = argument1;
var width = argument2;
var height = argument3;
var fill = argument4;

if (fill)
{
    fill = false;
}
else
{
    fill = true;
}

draw_rectangle (drawx, drawy, drawx + width, drawy + height, fill);

#define math_quickcorrect
//idk about this
var i;

return i / 2;

#define mouse_touching_rect
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var startx = argument0;
var starty = argument1;
var hitlength = argument2;
var hitheight = argument3;

if (mouse_x >= startx && mouse_x <= startx + hitlength && mouse_y >= starty && mouse_y <= starty + hitheight)
{
    return true;
}
else
{
    return false;
}

#define debug_drawfps
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var realfps = argument0;
var drawx = argument1;
var drawy = argument2;
var width = argument3
var height = argument4;
var fill = argument5;
var fpscolour = argument6;

var drawfps
var fpstype;

if (realfps)
{
    drawfps = string(fps_real);
    fpstype = "real";
}
else
{
    drawfps = string(fps);
    fpstype = "supposed";
}

draw_rect (drawx, drawy, width, height, fill);
draw_set_color (fpscolour);
draw_text (drawx + width / 2 - string_width (drawfps) / 2, drawy + height / 2 - string_height (drawfps) / 2, fpstype + " fps" + drawfps);

#define debug_drawvar
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var todraw = argument0;
var drawx = argument1;
var drawy = argument2;
var width = argument3;
var length = argument4;
var textcolor = argument5;

draw_rect (drawx, drawy, width, length, true);
draw_set_color (textcolor);
draw_text (drawx, drawy, todraw);

#define ui_tooltip
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var message = argument0;
var startx = argument1;
var starty = argument2;
var hitlength = argument3;
var hitheight = argument4;
var textcolour = argument5;
var boxcolour = argument6;

depth = -200

if (mouse_touching_rect (startx, starty, hitlength, hitheight))
{
    if (mouse_x + string_width (message) > room_width)
    {
        draw_set_color (boxcolour);
        draw_rect (mouse_x - string_width (message) - 25, mouse_y + 25, string_width (message), string_height (message), true);
        draw_set_color (textcolour);
        draw_text (mouse_x - string_width (message) - 25, mouse_y + 25, message);
    } 
    else 
    {
        draw_set_color (boxcolour);
        draw_rect (mouse_x + 25, mouse_y + 25, string_width (message), string_height (message), true);
        draw_set_color (textcolour);
        draw_text (mouse_x + 25, mouse_y + 25, message);
    }
    
}



#define message_box
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var type = argument0;       //types of shapes drawn in window
var exittype = argument1;
var xpadding = argument2  
var ypadding = argument3;
var title = argument4;      //title of window
var message = argument5;    //message

if (type == "message")
{
    //TODO
}

//main window
draw_rectangle 
(
    anchor_x ("left", 0) + xpadding, 
    anchor_y ("top", 0) + ypadding, 
    anchor_x ("right", 0) - xpadding, 
    anchor_y ("bottom", 0) - ypadding, 
    false
);

draw_set_color (c_white);

//title
draw_text
(
    ((anchor_x ("left", 0) + xpadding) + ((anchor_x ("right", 0) - xpadding) - (anchor_x ("left", 0) + xpadding)) / 2) - string_width (title) / 2, 
    anchor_y ("top", 0) + ypadding + 30, 
    title
);

//message
draw_text_ext
(
    (anchor_x ("left", 0) + xpadding) + 10, 
    anchor_y ("top", 0) + ypadding + 80, 
    message,
    string_height (message), ((anchor_x ("right", 0) - xpadding) - (anchor_x ("left", 0) + xpadding) - 9)
);

//TODO draw other buttons


#define ui_button
/* 
CGLT by Shenei
You may freely use and modify CGLT, see github repo for more details
*/

var xp = argument0;
var yp = argument1;
var width = argument2;
var height = argument3;
var label = argument4;

draw_rect (xp, yp, width, height, true);
draw_text (xp + xp / 2, yp + yp / 2, label);

if (mouse_x >= xp && mouse_x <= xp + length && mouse_y >= yp && mouse_y <= yp + width)
{
    if (mouse_check_button_pressed(mb_left))
    {
        show_message ("r");
    }
}

#define forms_button


#define io_makemouth


#define readme
/*
CGLT's IO works on a mouth system.
A mouth is able to spit and swallow. The library makes gamemaker data persistence
easier and faster to use by spitting out data and swalling files.

io will also cover the tools to quickly create a level editor's file read and write
*/

#define io_spit


#define io_swallow


#define rpg_text
var text = argument0;
var drawspeed = argument1;


