Create Trigger sumazakup ON [Zakupy Wyposażenia]
BEFORE INSERT

set new.SUMA=new.Ilość*new.[Cena Jednostkowa];
