Create Trigger sumazakup
BEFORE INSERT
ON
[Zakupy Wyposażenia]
FOR EACH ROW
set new.SUMA=new.Ilość*new.[Cena Jednostkowa];
