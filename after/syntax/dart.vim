syn match flutterWidget containedin=dartFold "\%(\%(^\|[^.]\)\.\s*\)\@<!\<\u\%(\w\|[^\x00-\x7F]\)*\>" contained
hi def link flutterWidget Type
