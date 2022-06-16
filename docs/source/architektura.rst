Architektura
=============
W tej sekcji zostanie Ci przedstawiona architektura projektu.

.. uml::

    Klient -> Serwer: Prośba o pobranie wszystkich customers
    Serwer --> Klient: Potwierdzenie przyjecia prosby i wyslanie wszystkich customers

.. uml::

    Klient -> Serwer: Prośba o pobranie pojedynczego customera po imieniu lub id
    Serwer --> Klient: Potwierdzenie przyjecia prosby i wyslanie pojedycznego customer