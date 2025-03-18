vkE2::_
vk1C & H::Send, {Blind}{left}
vk1C & J::Send, {Blind}{down}
vk1C & K::Send, {Blind}{up}
vk1C & L::Send, {Blind}{right}
vk1C & $::Send, {Blind}{End}
vk1C & 0::Send, {Blind}{Home}
vk1C & G::Send, {Blind}{Home}
vk1C & `;::Send, {Blind}End}
vk1C & M::Send, {Blind}{PgDn}
vk1C & N::Send, {Blind}{PgDn}
vk1C & ,::Send, {Blind}{PgUp}
vk1C & I::Send, {Blind}{PgUp}
vk1C & X::Send, {Blind}{Delete}
vk1C & O::Send, {Blind}{End}{Enter}

vk1D & H::Send, {Blind}{left}
vk1D & J::Send, {Blind}{down}
vk1D & K::Send, {Blind}{up}
vk1D & L::Send, {Blind}{right}
vk1D & $::Send, {Blind}{End}
vk1D & 0::Send, {Blind}{Home}
vk1D & G::Send, {Blind}{Home}
vk1D & `;::Send, {Blind}{End}
vk1D & M::Send, {Blind}{PgDn}
vk1D & N::Send, {Blind}{PgDn}
vk1D & ,::Send, {Blind}{PgUp}
vk1D & I::Send, {Blind}{PgUp}
vk1D & X::Send, {Blind}{Delete}
vk1D & O::Send, {Blind}{End}{Enter}

vkF3::send,{blind}{Esc}
vkF4::send,{blind}{Esc}

vk1D & VkF3::VkF3
vk1C & VkF3::VkF3
vk1D & VkF4::VkF4
vk1C & VkF4::VkF4

;vk1D & Up::MouseMove,0,-1,1,R

vk1D & Up::
	hv = 0
	if GetKeyState( "Left", "P" )
	{
		hv = -1
	}
	if GetKeyState( "Right", "P" )
	{
		hv = 1
	}
	
	if GetKeyState( "Ctrl", "P" )
	{
		MouseMove,hv*16,-16,1,R
	}
	else
	{
		MouseMove,hv,-1,1,R
	}
	return

vk1D & Down::
	hv = 0
	if GetKeyState( "Left", "P" )
	{
		hv = -1
	}
	if GetKeyState( "Right", "P" )
	{
		hv = 1
	}
	
	if GetKeyState( "Ctrl", "P" )
	{
		MouseMove,hv*16,16,1,R
	}
	else
	{
		MouseMove,hv,1,1,R
	}
	return

vk1D & Left::
	vv = 0
	if GetKeyState( "Up", "P" )
	{
		vv = -1
	}
	if GetKeyState( "Down", "P" )
	{
		vv = 1
	}
	
	if GetKeyState( "Ctrl", "P" )
	{
		MouseMove,-16,vv*16,0,R
	}
	else
	{
		MouseMove,-1,vv,0,R
	}
	return

vk1D & Right::
	vv = 0
	if GetKeyState( "Up", "P" )
	{
		vv = -1
	}
	if GetKeyState( "Down", "P" )
	{
		vv = 1
	}
	
	if GetKeyState( "Ctrl", "P" )
	{
		MouseMove,16,vv*16,0,R
	}
	else
	{
		MouseMove,1,vv,0,R
	}
	return

vk1D & Enter::
	if GetKeyState( "Ctrl", "P" )
	{
		MouseClick, Right
	}
	else
	{
		MouseClick, Left
	}
	return

vk1D & Space::MouseClick, Left,,,,,D

vk1D & W::MouseMove,0,-2000,1,R
vk1D & S::MouseMove,0,2000,1,R
vk1D & A::MouseMove,-1920,0,0,R
vk1D & D::MouseMove,1920,0,0,R
;vk1D & S::MouseClick, Left,,,,,D

;vk1D & W::MouseMove,0,-40,1,R
;vk1D & S::MouseMove,0,40,1,R
;vk1D & A::MouseMove,-40,0,1,R
;vk1D & D::MouseMove,40,0,1,R
;vk1D & Q::MouseClick, Left
;vk1D & E::MouseClick, Right

;
;XButton1::MouseMove,0,0
;XButton2::

^!K::run,C:\Program Files (x86)\HidemaruMail\TuruKame.exe

Browser_Home::run,C:\Program Files (x86)\Mozilla Firefox\firefox.exe
Launch_App2::Run,Calc

^Esc::
	Run,D:\Dev\_00_misc\Freesoft\EjctClse\EjctClse /M
	return

macroStr = ""

vk1D & F1::
	global macroStr
	input, macroStr, T10 V L256, {RCtrl}
	MsgBox,%macroStr%
	return

vk1D & F2::
	global macroStr
	send %macroStr%
	return

#E::run,D:\work\Util\te201108\TE64.exe
