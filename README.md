# Evolution und KI 	
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/mpievolbio-scicomp/Evolution-und-KI/blob/master/GASpiel_sc.ipynb)
	
## Begruessung, Vorstellung
	
## Einleitung  
### Begriffe und Abgrenzungen	
* KI	
* Maschinelles Lernen	
* (Kuenstliche) Neuronale Netze	
* Betreutes/unbetreutes Maschinelles Lernen	
	
### Anwendungsbeispiele fuer ML	
* Bildklassifizierung, Mustererkennung	
* Internetsuche	
* Meinungsforschung (-manipulation?)	
* Spiele (Schach, Go)	
* Kreative Neuronale Netze	
	
	
## Struktur Neuronaler Netze 	
* Analogie zur Biologie	
* kuenstliche Neuronen: 	
  - Eingaenge	
  - Gewichte	
  - Verschiebung/Bias	
  - Aktivierungsfunktion	
  - Ausgang	
* Struktur eines Neuronalen Netzes:	
  - Eingangsschicht	
  - Versteckte ('tiefe') Ebenen	
  - Ausgangsschicht	
	
## Training Neuronaler Netze	
* Trainingsdaten	
* Splitten der Trainingsdaten	
* Uebertraining	
* Training mit Feedback loop.	
  - Formulierung des Optimierungsproblems	
  - Die Gradientenmethode	
  - Der Backpropagation Algorithmus	
* Kurzreferat: Vektoren, Matrizen oder  Funktionen und Ableitungen 	
	
## Genetischer Algorithmus
### Genotyp und Phaenotyp	
### Hyperparameter als Chromosom eines Netzwerks	
### Selektion	
### Rolle des Zufalls	
### Genetischer Algorithmus zur Optimierung der Hyperparameter	
	
## Anwendungsbeispiel
### Der MNIST Datensatz 	
* Groesse des Datensatzes	
* Beispielbilder	
* Bestes Netzwerk	
* Vorfuehren eines Trainingslaufs	
	
### Einfuehrung in die Programmierumgebung 	
* Anmeldung	
* Oeffnen des Notebooks	
* Navigation und Ausfuehren von Zellen	
* Vorfuehren einer Generation	
* Austausch und Synchronisation der ausgewaehlten Modelle	
### Durchfuehren der Simulation	
### Analyse der Resultate 	
### Zusammenfassung und Ausblick 	

# Präsentation in slides.html konvertieren:
```
jupyter nbconvert Evolution_und_KI.ipynb --to slides --no-prompt --TagRemovePreprocessor.remove_input_tags={\"hide-input\"} --ServePostProcessor.port=8910 --ServerPostProcessor.ip='0.0.0.0' --SlidesExporter.reveal_theme=simple
```

# Simple http server starten:
```
python -m http.server --bind x.x.x.x
```
Then go to http://thisserver.xyz:8000
