Create Trigger sumazakup
Before insert
ON
[Zakupy Wyposażenia]
FOR EACH ROW
set new.SUMA=new.Ilość*new.[Cena Jednostkowa];
