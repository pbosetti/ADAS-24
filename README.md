# ADAS-24

Corso di Analisi Dati e Statistica, 2024–25, Università di Trento


# Note

## Nomi dei file

Sotto Windows, è preferibile **evitare spazi nei nomi dei file**: ad esempio `Lezione-1.Rmd` piuttosto che `Lezione 1.Rmd`.

Su altre piattaforme non dovrebero esserci problemi con gli spazi.


## Progetti e gestione dei file

Per seguire il corso, scarica [questa repository](https://github.com/pbosetti/ADAS-24/archive/refs/heads/main.zip) e poi apri il file di progetto `ADAS-24.Rproj`. In questo modo la **directory di lavoro** viene automaticamente impostata alla stessa directory contenente il file di progetto.

In alternativa, crea un tuo progetto: `File > New project...` e poi scegli *New directory* oppure *Existing directory* a seconda di ciò che vuoi fare. Successivamente, apri sempre il file di progetto.

Inoltre, il menu di progetto nell'angolo in alto a destra della finestra di RStudio ti consente di passare rapidamente da un progetto all'altro, oppure di aprire più di un progetto contemporaneamente.


## Preview di pdf

Nota che alcune applicazioni di visualizzazione dei file PDF sotto Windows bloccano il file attualmente aperto, impedendone la modifica o la sovrascrittura. Una di queste è Adobe Acrobat Reader. Di conseguenza, se cerchi di rigenerare un PDF mentre è ancora aperto il comando Knit fallisce con un errore.

Per evitare questo errore ci sono due alternative:

-   chiudere sempre Acrobat prima di rigenerare il file
-   impostare RStudio in modo da utilizzare il suo visualizzatore di PDF integrato: dal menu *Tools* scegliere *Global options*, quindi nel pannello *Sweave* scegliere *RStudio Viewer* per *PDF preview*.
