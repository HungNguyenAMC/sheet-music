\paper{
top-margin = 20 \mm
left-margin = 15 \mm
right-margin = 20 \mm
bottom-margin = 20\mm
indent = 20 \mm
short-indent = 7.5\mm

}

\header{
  title = "Thói đời"
  subtitle = "Easy Solo Series Ver 1.0"
  composer = "Nhạc và lời: Trúc Phương"
  arranger = "Arranger: Hung Nguyen"
  
}


melody = \relative c' {
  
  #(set-global-staff-size 20)
  \clef treble
  \key c \minor
  \time 4/4

% Đoạn 1 & 2

  \bar ".|:"
  
  \repeat volta 2 {
  r8 c4 ees8 ees8. g,16 c16[(g'16)] ees8
  \tuplet 3/2 {ees4 g4 g4} g8. g16 c,16[(ees16)] c8
  c2 r8 c'8 \tuplet 3/2 {bes8 [(c8 ees8)]}
  \grace {ees,16[f16]} ees4. | c8[(c8)] g8[(bes8)] c'8
  bes8[(c4)] g16 bes16 g8 c,4 ees16 c16
  c8[(g'4)] bes,16 g16 ees'8 ees8 c16[(g'16)] ees8
| }
  
 \alternative 
 { 
   {\grace {ees16[f16]} ees4. | c8 \tuplet 3/2 {g'4 bes4 aes4}
  g1
      | }

  %\bar ":|."
 { ees4 c8 g'8 bes8 g8[(f8)] bes8 | }
 
 }
 
  \acciaccatura d,16 c1 | 

% Điệp khúc
  r8 ees4 ees8 bes'8 ees,8 g8 c8
  \bar "||"
  ees2 r8 g,8[(ees'8)] ees16[(c16)]
  c4. c8[(c8)] f,8[(g8)] ees8 
  ees8[(c4)] g16 c16 \tuplet 3/2 {ees4 ees4 c4}
  c8[(ees4)] g16 bes16 g8 bes8 c,8 ees16[(f16)]
  g2 c,8[(g'4)] f8
  \acciaccatura f16 ees4. | 
  g,8 c8 ees8[(f8)] g16[(f16)]
    \acciaccatura f16 ees1 | 
% Đoạn 3
  r8 c4 ees8 ees8. g,16 c16[(g'16)] ees8
  \bar "||"
  \tuplet 3/2 {ees4 g4 g4} g8. g16 c,16[(ees16)] c8
  c2 r8 c'8 \tuplet 3/2 {bes8 [(c8 ees8)]}
  \grace {ees,16[f16]} ees4. | c8[(c8)] g'8[(bes8)] c8
  bes8[(c4)] g16 bes16 g8 c,4 ees16 c16
  c8[(g'4)] bes,16 g16 ees'8 ees8 c16[(g'16)] ees8
   ees4 c8 g'8 bes8 g8[(f8)] bes8
   \acciaccatura d,16 c1[(c2)] | r4 r4
     \bar "|."
  
}

one = \lyricmode {      
 Đường thương đau đầy ải nhân gian 
 Ai chưa qua chưa phải là người Trong thói đời cười ra nước mắt
 Xưa trắng tay gọi tên bằng hữu Giờ giầu sang quên kẻ tâm giao
 Còn gian dối cho nhau.
}
two = \lyricmode {
 Người yêu ta rồi cũng xa ta Nên chung thân ta giận cuộc đời
 Đôi mắt nào từng đêm buốt giá Bên chiếu chăn tình xa nhịp thở
 Tiền đổi tay khi rũ cơn _ _ _ _ _ _ mê Để chua xót trên bước về.
 Rượu trần ai gội niềm cay đắng Những suy tư in đậm đường hằn
 Mình còn ai đâu để vui Khi trót sa vũng lầy nhân thế
 Cỏ ưu tư muộn phiền lên xám môi.
 Bạn quên ta tình cũng quên ta Nên chân đêm thui thủi một mình
 Soi bóng đời bằng gương vỡ nát Nghe xót xa ngùi lên tròng mắt
 Đoạn buồn xa ta đã đi qua Ngày vui tới ta vẫn chờ.
 
}


\score{
  <<
    \new Voice = "one" {
      \autoBeamOff
      \melody
    }
    \new Lyrics \lyricsto "one" \one
    \new Lyrics \lyricsto "one" \two       
  >>
  \layout { }
  \midi { }
}