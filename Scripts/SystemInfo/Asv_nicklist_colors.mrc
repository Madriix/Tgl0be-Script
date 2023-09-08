;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Colors NickList : Girls and boys
;; Who_nicklist_asl version 1.3 (21.06.2019) 
;; Compatible pour 
;; divers serveurs IRC 
:: exemples: 
;; EuropNet, Discussionner, Andromede...
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

on 1:START: {
  .initialize_coloring
}

alias initialize_coloring {
  ; reset all entries in the clist
  var %compteur = 5
  while (%compteur <= $cnick(0,1)) {
    .uncolor_nick $cnick(%compteur)
    Inc %compteur 1
  }
}


on *:join:#: {
  if ( $me == $nick ) {
    who $chan
  } 
  who $nick
}


raw 315:*: {
  halt
}

raw 352:*: {

  ;echo -a ident $6 : $right($left($3,2),2)
  ;echo -a real $6 : $right($left($9-,4),1)
  ;; Récupération du sexe dans le realname du who : Age Sexe Ville

  ; Les "F" et "H" et "M" correspondent avec $10
  ; Format classique: 18 H 75
  if (  $10 == F || $10 == f ) {
    .cnick -r $6
    .cnick $6 13
  }
  if (  $10 == H || $10 == h || $10 == M ) {
    .cnick -r $6
    .cnick $6 12
  }


  if ( $right($left($9-,4),1) == F ) {
    ; Format Mimacy: 18;F;75
    .cnick -r $6
    .cnick $6 13
  } 
  if ( $right($left($9-,4),1) == H ) {
    ; Format Mimacy: 18;H;75
    .cnick -r $6
    .cnick $6 12
  }


  if (  $right($left($9-,4),1) == F ) {
    ; Format Discussionner: 18/F/75
    .cnick -r $6
    .cnick $6 13
  } 
  if ( $right($left($9-,4),1) == H ) {
    ; Format Discussionner: 18/H/75
    .cnick -r $6
    .cnick $6 12
  }


  ;echo -a Response: $1-

  halt
}

on 1:NICK: { 
  .uncolor_nick $nick
  who $newnick 
}

on 1:JOIN:*: { 
  who $nick
}

on 1:QUIT: { 
  .uncolor_nick $nick
}

alias uncolor_nick {
  .cnick -r $1
}
