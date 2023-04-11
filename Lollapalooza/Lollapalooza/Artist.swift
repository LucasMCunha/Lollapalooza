//
//  Artist.swift
//  Lollapalooza
//
//  Created by Lucas Cunha on 10/04/23.
//
/*
 Music(name: "Shape Of You",time: "3:53",image: "Ed3"),
 Music(name: "Eraser",time: "3:47",image: "Ed3"),
 Music(name: "Castle on the Hill",time: "4:21",image: "Ed3"),
 Music(name: "Perfect",time: "4:23",image: "Ed3"),
 Music(name: "Barcelona",time: "3:10",image: "Ed3")
 
 MusicsEd["","","","",""]
 
Artist(name: "Ed Sheeran", ProfileImage: "Ed1", DescriptionImage: "Ed2", Description: #"Edward Christopher Sheeran MBE, mais conhecido como Ed Sheeran (Halifax, 17 de fevereiro de 1991) é um cantor, compositor, produtor e ator britânico.  Ele se casou com Cherry Seaborn em janeiro de 2019 e hoje o casal tem duas filhas chamadas Lyra Antarctica Seaborn Sheeran e Jupiter Seaborn Sheeran. No início de 2012, Sheeran lançou um extended play independente, que chamou a atenção de Elton John e Jamie Foxx. Ele, em seguida, assinou contrato com a Asylum Records. Seu álbum de estréia, + (plus) (2011), contendo os singles 'The A Team', 'You Need Me, I Don't Need You', 'Lego House' e 'Drunk' foi disco de platina quíntuplo no Reino Unido. Em 2012, ele ganhou dois Brit Awards para Melhor Artista Solo Britânico Masculino e Breakthrough Act britânico. "The A Team" ganhou o prêmio Ivor Novello de Melhor Canção Musicalmente e liricamente. Em 2014 ele foi nomeado para Best New Artist na 56ª Annual Grammy Awards.", Musics: MusicsEd)
 
 
 
 Music(name: "As It Was",time: "2:47",image: "Harry3"),
 Music(name: "Keep Driving",time: "2:20",image: "Harry3"),
 Music(name: "Late Night Talking",time: "2:57",image: "Harry3"),
 Music(name: "Grapejuice",time: "3:11",image: "Harry3"),
 Music(name: "Boyfriends",time: "3:14",image: "Harry3")
 
 MusicasHarry["","","","",""]
 
 Artist(name: "Harry Styles", ProfileImage: "Harry1", DescriptionImage: "Harry2", Description:#"Harry Edward Styles (Redditch, 1 de fevereiro de 1994) é um cantor, compositor e ator britânico. Sua carreira musical começou em 2010 como concorrente solo na série britânica de competição de música The X Factor. Após sua eliminação, ele foi trazido de volta para se juntar à boy band One Direction, que se tornou uma das boy bands mais vendidas de todos os tempos antes de entrar em um hiato indefinido em 2016.
Styles lançou seu álbum solo de estreia autointitulado pela Columbia Records em 2017. Ele estreou no número um no Reino Unido e nos EUA e foi um dos dez álbuns mais vendidos do mundo no ano, enquanto seu primeiro single, "Sign of the Times", liderou a UK Singles Chart. O segundo álbum de Styles, Fine Line (2019), estreou no topo da Billboard 200 dos EUA com a maior estreia de um artista masculino britânico, e foi o álbum mais recente a ser incluído nos "500 Maiores Álbuns de Todos os Tempos" da Rolling Stone em 2020. Seu quarto single, "Watermelon Sugar", liderou a Billboard Hot 100 dos EUA. Apresentando o single do topo das paradas "As It Was", o terceiro álbum de Styles, Harry's House (2022), foi amplamente aclamado e quebrou vários recordes.", Musics: MusicasHarry)
*/

import Foundation
import SwiftUI

struct Artist: Identifiable{
    var id = UUID()
    var name: String
    var ProfileImage: String
    var DescriptionImage: String
    var Description: String
    var Musics: [Music]
}
