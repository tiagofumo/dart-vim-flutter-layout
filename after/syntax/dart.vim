syn match flutterWidget containedin=dartFold,dartLabelRegion "\%(\%(^\|[^.]\)\.\s*\)\@<!\<\u\%(\w\|[^\x00-\x7F]\)*\>" contained
hi def link flutterWidget Type
