var _W = keyboard_check(ord("W"));
var _A = keyboard_check(ord("A"));
var _S = keyboard_check(ord("S"));
var _D = keyboard_check(ord("D"));

var tecla = _D - _A != 0 or _S - _W != 0;

dir = point_direction(0,0,_D - _A, _S - _W);

velh = lengthdir_x(velc * tecla,dir);
velv = lengthdir_y(velc * tecla, dir);



if(place_meeting(x + velh, y, obj_colisor))
{
	while(!place_meeting(x + sign(velh), y, obj_colisor))
	{
		x = x + sign(velh);
	}
	velh = 0;
}


x += velh;

if(place_meeting(x,y + velv, obj_colisor))
{
	while(!place_meeting(x, y + sign(velv), obj_colisor))
	{
		y = y + sign(velv);
	}
	velv = 0;
}

y += velv;


#region MOVIMENTAÇÃO
if(modo_fantasma == false) //modo morto-vivo
{

}
#endregion

#region COLISÃO
#endregion