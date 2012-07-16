function c
{
	deactivate 2>/dev/null; #Deactivate any current virtualenv
	workon $1 2>/dev/null; #Try and activate project's virtualenv
	cd ~/Projects/$1;
	clear;
}

function extract
{
	tar -xvf $1;
}