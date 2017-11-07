PROGRAM cross;

USES crt;

VAR
	car : char;
	taille,longueur,hauteur : integer;

//BUT : Dessiner une croix avec un caractère choisi et saisi par l'utilisateur. Il choisira aussi sa taille.
//ENTREE : Caractère et taille de la croix
//SORTIE : Croix dessinée avec le caractère choisi à la taille choisie.

BEGIN
	clrscr;
	writeln('Veuillez saisir le caractère avec lequel vous désirez dessiner la croix :');
	readln(car);
	writeln('Veuillez saisir la taille de la croix :');
	readln(taille);
	while hauteur<=taille do
		BEGIN
			FOR longueur:=1 to taille DO
				BEGIN
				IF (hauteur=longueur) OR (hauteur=((taille+1)-longueur)) THEN
					begin
					write(car);
					end
				ELSE
					begin
					write(' ');
					end;
			END;
			hauteur:=hauteur+1;
			writeln;
		END;
	readkey;

END.

{
	VAR :
	car : CARACTERE
	taille,longueur,hauteur : ENTIER

	DEBUT

	ECRIRE("Veuillez saisir le caractère avec lequel vous désirez dessiner la croix :");
	LIRE(car)
	ECRIRE('Veuillez saisir la taille de la croix :')
	LIRE(taille)
	TANTQUE (hauteur<=taille) FAIRE
		POUR longueur<-1 à taille FAIRE
			SI (hauteur=longueur) OU (hauteur=((taille+1)-longueur)) ALORS
				ECRIRE(car)
			SINON
				ECRIRE(" ")
			FINSI
		FINPOUR
		hauteur<-hauteur+1
	FINTANTQUE
	FIN
}

