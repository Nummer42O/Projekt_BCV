# Projekt_BCV

## Abstract

Als Anwendungsszenario wählen wir die POV eines Roboters.
Im folgenden wird beschrieben, wie die geplanten Themen integriert werden sollen.
Die hier dargstellte Reihenfolge bezieht sich auch auf die Abarbeitung.

### Monocular Depth Estimation

Für Tiefeninformation werden klassisch 2 Kameras/Linsen benötigt, was komplexere Algorithmen und genaue Kalibrierungen zwischen den Bildern fordert. Tiefeninformationen über ein Bild/eine Serie von Bildern zu generierenw würde viel dieses Overheads entfernen. Eine einfache Implementierung als schwarz-weiß Bild ist hier angestrebt.

### Image Super-Reosolution

Ein (theoretisch evtl. sogar unendlicher) Tiefenzoom könnte hilfreich sein, wenn einzelne Bildelemente für Algorithmen schwer zu erkennen sind. Eine punktuelle Implementierung von bestimmten regions of interest könnte hier hilfreich sein.

### Deblurring

Dieser Abschnitt ist... relativ selbsterklärend. :)

### Low-Light Image Enhancement

Vor allem für Kanten-suchende Algorithmen wie Canny sind low-light Szenarien ungünstig, da die unterschiede in den graustufen Bildern durch die gerinde 8-bit schnell verschwimmen. Dieses Defizitnauszugleichen könnte durchaus in Algorithmen zum Finden bekannter Muster helfen.

### Image enhancement

Artifakte der Camera, ungewollte optische Effekte, Dreck auf der Linse sind Effekte, welche die Performance von diversen optischen Algorithmen beeinträchtigen können. Diese zu entfernen kann dementsprechend verhindern, dass bestimmte Daten "verloren gehen".

### Image Inpainting

Vor allem im Kontext von Sichtbereichtransformationen, etc. können gerne "blinde Ecken" entstehen, für welche es durchaus sinnvoll wäre, diese mit Kontext zu füllen, um Algorithmen nicht zu "verwirren".