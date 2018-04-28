# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'time'
require 'digest/md5'

user1 = Person.new name: "Alejandro López Santos", email: "test1@test.com", picture: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524918641/avatar1.jpg", password: Digest::MD5.hexdigest('test1')
user1.save!

user2 = Person.new name: "Santiago Miguel Gubern González", email: "test2@test.com", picture: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524918642/avatar2.png", password: Digest::MD5.hexdigest('test2')
user2.save!

books = Book.create [{isbn: "9788478884452",
                              name: "Harry Potter y la piedra filosofal",
                              author: "J.K. Rowling",
                              description: "Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y del insoportable primo Dudley. Harry se siente muy triste y solo, hasta que un buen día recibe una carta que cambiará su vida para siempre.",
                              rate: 9,
                              publisher: "S.A. Salamandra",
                              image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745601/harrypotter.jpg"},
                              {isbn: "9788478884957",
                               name: "Harry Potter y la cámara secreta",
                               author: "J.K. Rowling",
                               description: "Tras derrotar una vez más a Lord Voldemort, su siniestro enemigo en Harry Potter y la piedra filosofal, Harry espera impaciente en casa de sus insoportables tíos el inicio del segundo curso del Colegio Hogwarts de Magia y Hechicería. Sin embargo, la espera dura poco, pues un elfo aparece en su habitación y le advierte que una amenaza mortal se cierne sobre la escuela. Así pues, Harry no se lo piensa dos veces y, acompañado de Ron, su mejor amigo, se dirige a Hogwarts en un coche volador. Pero ¿puede un aprendiz de mago defender la escuela de los malvados que pretenden destruirla? Sin saber que alguien ha abierto la Cámara de los Secretos, dejando escapar una serie de monstruos peligrosos, Harry Potter y sus amigos Ron y Hermione tendrán que enfrentarse con arañas gigantes, serpientes encantandas, fantasmas enfurecidos y, sobre todo, con la mismísima reencarnación de su más temible adversario.",
                               rate: 6.7,
                               publisher: "S.A. Salamandra",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745601/harrypotter.jpg"},
                              {isbn: "9788498388251",
                               name: "Harry Potter y el prisionero de Azkaban",
                               author: "J.K. Rowling",
                               description: "El Señor de las Tinieblas está solo y sin amigos, abandonado por sus seguidores. Su vasallo ha estado encadenado doce años. Hoy, antes de la medianoche, el vasallo se liberará e irá a reunirse con su amo.Tras un percance mágico de proporciones gigantescas, Harry Potter huye de la casa de los Dursley y de Little Whinging en el autobús noctámbulo y supone que se enfrentará a duras represalias. Pero el ministro de Magia tiene otros problemas más acuciantes: Sirius Black, el infame prisionero y fiel seguidor de Lord Voldemort, se ha fugado de la prisión de Azkaban. Dicen que está buscando a Harry, y el ministro de Magia ha enviado a los dementores de Azkaban, esos seres que absorben el alma con su beso, a vigilar los terrenos del colegio. En su tercer curso en Hogwarts, Harry se ve acosado por rumores terribles y amenazas de muerte, descubre nuevos datos sobre su pasado y se enfrenta cara a cara a uno de los vasallos más fervientes del Señor Tenebroso...La edición ilustrada del tercer libro de la saga escrita por J. K. Rowling, tan esperada, está repleta de momentos mágicos creados mediante pinceles, lápices y píxeles por Jim Kay, ganador de la medalla Kate Greenaway.«Me encanta ver cómo Jim Kay interpreta el mundo de Harry Potter, y para mí es un honor y un placer que siga aportándole su talento.» J. K. Rowling",
                               rate: 8.1,
                               publisher: "S.A. Salamandra",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745601/harrypotter.jpg"},
                              {isbn: "9788498383447",
                               name: "Harry Potter y el cáliz de fuego",
                               author: "J.K. Rowling",
                               description: "Tras otro abominable verano con los Dursley, Harry se dispone a iniciar el cuarto curso en Hogwarts, la famosa escuela de magia y hechicería. A sus catorce años, a Harry le gustaría ser un joven mago como los demás y dedicarse a aprender nuevos sortilegios, encontrarse con sus amigos Ron y Hermione y asistir con ellos a los Mundiales de quidditch. Sin embargo, al llegar al colegio le espera una gran sorpresa que lo obligará a enfrentarse a los desafíos más temibles de toda su vida. Si logra superarlos, habrá demostrado que ya no es un niño y que está preparado para vivir las nuevas y emocionantes experiencias que el futuro le depara.",
                               rate: 6.9,
                               publisher: "S.A. Salamandra",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745601/harrypotter.jpg"},
                              {isbn: "9788498383621",
                               name: "Harry Potter y la orden del Fénix",
                               author: "J.K. Rowling",
                               description: "Las tediosas vacaciones en casa de sus tíos todavía no han acabado y Harry Potter se encuentra más inquieto que nunca. Apenas ha tenido nocitias de Ron y Hermiones, y presiente que algo extraño está sucediendo en Hogwarts. En efecto, cuando por fin comienza otro curso en el famoso colegio de magia y hechicería, sus temores se vuelven realidad. El Ministerio de Magia niega que Voldemort haya regresado y ha iniciado una campaña de desprestigio contra Harry Potter y Dumbledore, para lo cual ha asignado a la horrible profesora Dolores Umbridge la tarea de vigilar todos sus movimientos. Así pues, además de sentirse solo e incomprendido, Harry sospecha que Voldemort puede adivinar sus pensamientos, e intuye que el temible mago trata de apoderarse de un objeto secreto que le permitiría recuperar su poder destructivo.",
                               rate: 7.5,
                               publisher: "S.A. Salamandra",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745601/harrypotter.jpg"},
                              {isbn: "9788498386363",
                               name: "Harry Potter y el misterio del Príncipe",
                               author: "J.K. Rowling",
                               description: "En medio de graves acontecimientos que asolan el país, Harry inicia su sexto curso en Hogwarts. El equipo de quidditch, los exámenes y las chicas lo mantienen ocupado, pero la tranquilidad dura poco. A pesar de los férreos controles de seguridad, dos alumnos son brutalmente atacados. Dumbledore sabe que, tal como se anunciaba en la Profecía, Harry y Voldemort han de enfrentarse a muerte. Así pues, para intentar debilitar al enemigo, el anciano director y el joven mago emprenderán juntos un peligroso viaje con la ayuda de un viejo libro de pociones perteneciente a un misterioso personaje, alguien que se hace llamar Príncipe Mestizo.",
                               rate: 6.2,
                               publisher: "S.A. Salamandra",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745601/harrypotter.jpg"},
                              {isbn: "9788498386370",
                               name: "Harry Potter y las reliquias de la muerte",
                               author: "J.K. Rowling",
                               description: "La fecha crucial se acerca. Cuando cumpla los diecisiete, Harry perderá el encantamiento protector que lo mantiene a salvo. El anunciado combate a muerte con Voldemort es inminente, y la casi imposible misión de encontrar y destruir los Horrocruxes restantes es más urgente que nunca. Ha llegado el momento de tomar las decisiones más difíciles. Harry debe abandonar la calidez y seguridad de La Madriguera para emprender sin miedo ni vacilaciones el inexorable sendero trazado para él. Consciente de lo mucho que está en juego, sólo dentro de sí mismo encontrará la fuerza que lo impulsará en la vertiginosa carrera hacia un destino desconocido.",
                               rate: 9.8,
                               publisher: "S.A. Salamandra",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745601/harrypotter.jpg"},
                              {isbn: "9788445000663",
                               name: "El Señor de los Anillos I: La Comunidad del Anillo",
                               author: "J.R.R. Tolkien",
                               description: "En la adormecida e idílica Comarca, un joven hobbit recibe un encargo: custodiar el Anillo Único y emprender el viaje para su destrucción en la Grieta del Destino. Acompañado por magos, hombres, elfos y enanos, atravesará la Tierra Media y se internará en las sombras de Mordor, perseguido siempre por las huestes de Sauron, el Señor Oscuro, dispuesto a recuperar su creación para establecer el dominio definitivo del Mal.",
                               rate: 8,
                               publisher: "Minotauro",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745604/lordoftherings.jpg"},
                              {isbn: "9788445000670",
                               name: "El Señor de los Anillos II: Las Dos Torres",
                               author: "J.R.R. Tolkien",
                               description: "La Compañía se ha disuelto y sus integrantes emprenden caminos separados. Frodo y Sam continúan solos su viaje a lo largo del río Anduin, perseguidos por la sombra misteriosa de un ser extraño que también ambiciona la posesión del Anillo. Mientras, hombres, elfos y enanos se preparan para la batalla final contra las fuerzas del Señor del Mal.",
                               rate: 5,
                               publisher: "Minotauro",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745604/lordoftherings.jpg"},
                              {isbn: "9788445000687",
                               name: "El Señor de los Anillos III: El Retorno del Rey",
                               author: "J.R.R. Tolkien",
                               description: "Los ejércitos del Señor Oscuro van extendiendo cada vez más su maléfica sombra por la Tierra Media. Hombres, elfos y enanos unen sus fuerzas para presentar batalla a Sauron y sus huestes. Ajenos a estos preparativos, Frodo y Sam siguen adentrándose en el país de Mordor en su heroico viaje para destruir el Anillo de Poder en las Grietas del Destino.",
                               rate: 9.1,
                               publisher: "Minotauro",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745604/lordoftherings.jpg"},
                              {isbn: "9788491462538",
                               name: "Your Name (Novela)",
                               author: "Makoto Shinkai",
                               description: "Mitsuha Miyamizues una estudiante de secundaria de un pueblo montañoso.Taki Tachibanaes un estudiante de secundaria de Tokio. Un díaMitsuhasueña que se convierte en chico joven de una gran metrópolis. Por su parte,Takisueña que es una adolescente de una villa lejana ... ",
                               rate: 7.3,
                               publisher: "Planeta de Agostini",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745605/yourname.jpg"},
                              {isbn: "9788494699580",
                               name: "El Viaje de Chihiro. Nada de lo que sucede se olvida jamás",
                               author: "Studio Ghibli",
                               description: "TRAS EL ÉXITO DE MI VECINO MIYAZAKI! El viaje de Chihiro, ganadora del Óscar y el Oso de Oro de Berlín, es una de las películas más aclamadas de la historia del cine, pero también de las más complejas y profundas. En este libro desciframos todos sus misterios, y nos sumergimos en los entresijos de una historia única y fascinante. Vuelve a disfrutarla y descubre todo lo que se esconde tras ella. Este es un libro sobre el alma y el corazón de El viaje de Chihiro. Una guía imprescindible y una narración explicada y completa de lo que significa su filosofía, cada momento, cada detalle y cada instante exacto de la película dirigida por Hayao Miyazaki y producida por Studio Ghibli. Un libro escrito por Álvaro López Martín, creador y autor del blog de referencia Generación GHIBLI, y de los libros Mi vecino Miyazaki. Studio Ghibli, la animación japonesa que lo cambió todo y Antes de Mi vecino Miyazaki. El origen de Studio Ghibli. Prólogo de la periodista y escritora Marta Fernández.",
                               rate: 8.3,
                               publisher: "Diabolo Ediciones S.L.",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524745603/chihiro.jpg"},
                              {isbn: "9788467911534",
                               name: "Blood Lad 01 (Manga)",
                               author: "Yuuki Kodama",
                               description: "¡UN NUEVO Y DIVERTIDO SHONEN SOBRE UN VAMPIRO OTAKU! El vampiro Staz es uno de los líderes de las bandas que controlan el infierno. Temido y respetado, le suelen pasar por alto sus… rarezas, como su pasión por el manga, el anime y la cultura humana. Pero cuando Fuyumi, una chica humana, aparece en su territorio, Staz pierde la cabeza…",
                               rate: 4.4,
                               publisher: "Norma Editorial",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746010/blood1.jpg"},
                              {isbn: "9788467912159",
                               name: "Blood Lad 02 (Manga)",
                               author: "Yuuki Kodama",
                               description: "UN DIVERTIDO SHONEN PROTAGONIZADO POR UN VAMPIRO MUY PECULIAR. Staz descubre que hay un libro que podría devolverle la vida a Fuyumi, por lo que no duda en pedírselo a Wolf, otro de los líderes del Infierno. El problema es que Wolf, como buen hombre lobo, antes quiere que Staz sude la gota gorda...",
                               rate: 4.4,
                               publisher: "Norma Editorial",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746010/blood2.jpg"},
                              {isbn: "9788467912609",
                               name: "Blood Lad 03 (Manga)",
                               author: "Yuuki Kodama",
                               description: "STAZ YA SABE CÓMO SALVAR A FUYUMI, PERO NO CONTABA CON ENFRENTARSE A LA FAMILIA… Staz se siente responsable por la muerte de Fuyumi, así que busca un método de devolverle la vida. La buena noticia es que hay un libro que se supone que podría ayudarle, la mala es que no lo puede leer porque está cifrado. Y el único que podría leerlo es su autor... su temible hermano Braz D. Vlad.",
                               rate: 5.6,
                               publisher: "Norma Editorial",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746010/blood3.jpg"},
                              {isbn: "9788427202122",
                               name: "Los Juegos del Hambre 1",
                               author: "Suzanne Collins",
                               description: "GANAR SIGNIFICA FAMA Y RIQUEZA. PERDER SIGNIFICA UNA MUERTE SEGURA. En una oscura versión del futuropróximo, doce chicos y doce chicas se ven obligados a participar en un reality show llamado Los juegos del hambre. Solohay una regla: matar o morir. Cuando Katniss Everdeen, una joven de dieciséis añosse presenta voluntaria para ocuparel lugar de su hermana en los juegos, lo entiende como una condena a muerte. Sin embargo Katniss ya ha visto la muertede cerca y la supervivencia forma parte de su naturaleza. ¡Que empiecen los septuagésimo cuartos juegos del hambre!",
                               rate: 8.3,
                               publisher: "Molino",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746436/hungergames.jpg"},
                              {isbn: "9788427202139",
                               name: "Los Juegos del Hambre 2: En Llamas",
                               author: "Suzanne Collins",
                               description: "Katniss Everdeen ha sobrevivido a Los juegos del hambre. Pero el Capitolio quiere venganza. Contra todopronóstico, Katniss Everdeen y Peeta Mellark siguen vivos. Aunque Katniss debería sentirse aliviada, se rumorea queexiste una rebelión contra el Capitolio, una rebelión que puede que Katniss y Peeta hayan ayudado a inspirar. La naciónles observa y hay mucho en juego. Un movimiento en falso y las consecuencias serán inimaginables.",
                               rate: 8.1,
                               publisher: "Molino",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746436/hungergames.jpg"},
                              {isbn: "9788427202146",
                               name: "Los Juegos del Hambre 3: Sinsajo",
                               author: "Suzanne Collins",
                               description: "Katnis Everdeen ha sobrevivido dos veces a Los juegos del hambre, pero no está a salvo. La revolución seextiende y, al parecer, todos han tenido algo que ver en el meticuloso plan, todos excepto Katniss. Aun así su papel enla batalla final es el más importante de todos. Katniss debe convertirse en el Sinsajo, en el símbolo de la rebelión...a cualquier precio. ¡Que empiecen los septuagésimo sextos juegos del hambre!",
                               rate: 8.9,
                               publisher: "Molino",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746436/hungergames.jpg"},
                              {isbn: "9788466663069",
                               name: "Ready Player One",
                               author: "Ernest Cline",
                               description: "Estamos en el año 2044 y, como el resto defor books.each la humanidad, Wade Watts prefiere mil veces el videojuego de OASIS al cada vez más sombrío mundo real. Se asegura que esconde las diabólicas piezas de un rompecabezas cuya resolución conduce a una fortuna incalculable. Las claves del enigma están basadas en la cultura de finales del siglo XX y, durante años, millones de humanos han intentado dar con ellas, sin éxito. De repente, Wade logra resolver el primer rompecabezas del premio, y, a partir de ese momento, debe competir contra miles de jugadores para conseguir el trofeo. La única forma de sobrevivir es ganar; pero para hacerlo tendrá que abandonar su existencia virtual y enfrentarse a la vida y al amor en el mundo real, del que siempre ha intentado escapar. Reseñas: «Una fascinante novela cibernética, tan traviesa como imaginativa, llamada a convertirse en un éxito.» Booklist «Disfruté con cada página de esta novela.» Charlaine Harris, autora de Muerto hasta el anochecer «Una inyección de adrenalina, una búsqueda a través de un mundo virtual con la suficiente dosis de nostalgia de la década de 1980 para complacer a los más devotos seguidores de John Hughes.» Publishers Weekly «Un billete de lotería hacia el éxito.» New York Daily News",
                               rate: 7.4,
                               publisher: "S.A. Ediciones B",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746540/readyplayerone.jpg"},
                              {isbn: "9788408177081",
                               name: "Origen",
                               author: "Dan Brown",
                               description: "Robert Langdon, profesor de simbología e iconografía religiosa de la universidad de Harvard, acude al Museo Guggenheim Bilbao para asistir a un trascendental anuncio que «cambiará la faz de la ciencia para siempre». El anfitrión de la velada es Edmond Kirsch, un joven multimillonario cuyos visionarios inventos tecnológicos y audaces predicciones lo han convertido en una figura de renombre mundial. Kirsch, uno de los alumnos más brillantes de Langdon años atrás, se dispone a revelar un extraordinario descubrimiento que dará respuesta a las dos preguntas que han obsesionado a la humanidad desde el principio de los tiempos. ",
                               rate: 9.6,
                               publisher: "Planeta",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746627/origen.jpg"},
                              {isbn: "9788408130451",
                               name: "El Alquimista",
                               author: "Paulo Coelho",
                               description: "El Alquimista ha encontrado devotos seguidores en todo el mundo. Publicada en más de 170 países, es una de las novelas más traducidas del mundo (80 lenguas) y ha convertido a Paulo Coelho en uno de los autores más leídos de la historia. Poderosa, sencilla, sabia e inspiradora, ésta es la historia de Santiago, un joven pastor andaluz que viaja desde su tierra natal hacia el desierto egipcio en busca de un tesoro oculto en las pirámides. Nadie sabe lo que contiene el tesoro, ni si Santiago será capaz de superar los obstáculos del camino. Pero lo que comienza como un viaje en busca de riquezas se convierte en un descubrimiento del tesoro interior. ",
                               rate: 7.8,
                               publisher: "Planeta",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524746813/alquimista.jpg"},
                              {isbn: "9788448130008",
                               name: "Diseño de páginas web: Iniciación y Referencia",
                               author: "Jose Mariano González Romano, Juan Manuel Cordero Valle",
                               description: "Utilizando el método de aprendizaje y referencia de la colección, el libro enfoca el diseño de páginas web no limitándose solo a HTML, sino exponiendo todas las posibilidades existentes en el mercado. El libro está pensado como el punto de partida para aquellas personas que quieran diseñar sus páginas web y necesiten tener una visión concreta de cómo empezar y una visión global de todas las posibilidades que actualmente tienen. Con relación a la primera edición, se hablan de las últimas técnicas y posibilidades de creación web que han surgido en los últimos años.﻿",
                               rate: 6,
                               publisher: "S.A. McGraw-Hill",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524747056/webs.jpg"},
                              {isbn: "9788448142339",
                               name: "Oracle Database 10g: Guía de Aprendizaje",
                               author: "Michael Abbey",
                               description: "Aprenda los conceptos fundamentales sobre administración y programación de Oracle Database 10g con esta guía de aprendizaje paso a paso. Conozca, a través de los tutoriales didácticos, los fundamentos de la base de datos, el papel que desempeña el administrador y las principales características del producto. También se proporciona una detallada introducción a la programación en SQL, PL/SQL, Java y XML. Conviértase en un experto administrador, desarrollador o usuario de Oracle gracias al método de aprendizaje contrastado de esta guía de Oracle Press.",
                               rate: 4,
                               publisher: "S.A. McGraw-Hill",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524747966/oracle.jpg"},
                              {isbn: "9788466655026",
                               name: "La Gran Historia de los Videojuegos",
                               author: "Steven L. Kent",
                               description: "La gran historia de los videojuegos hace que vuelvas a sentir los zumbidos, estallidos, explosiones y resplandores de un salón recreativo. Habla de todo lo que siempre quisiste saber, y mucho más, sobre esos videojuegos inolvidables que cambiaron el mundo, los visionarios que los crearon y los aficionados que jugaron con ellos. De los salones recreativos a la televisión y de los ordenadores personales a los dispositivos portátiles, los videojuegos llevan casi treinta años embelesando al niño que llevamos dentro. El autor e historiador de videojuegos Steven L. Kent ha sido partícipe de esa euforia y la ha documentado desde sus comienzos. Este es, pues, un libro cautivador que relata la increíble historia de cómo una afición marginal se convirtió en todo un fenómeno cultural. Gracias a una documentación meticulosa y muchas entrevistas personales con cientos de celebridades, sabrás de primera mano la razón por la que juegos del pasado como Space Invaders, Centipede y Pac-Man crearon escuela en los salones recreativos y definieron una generación. Y también cómo las grandes empresas de la actualidad, entre ellas Sony, Nintendo y Electronic Arts, han creado una industria multimillonaria y toda una nueva generación de jugadores. Descubrirás:- El videojuego que evitó que Nintendo se declarara en bancarrota- La historia ...",
                               rate: 7.7,
                               publisher: "S.A. Ediciones B",
                               image: "http://res.cloudinary.com/alejandroulpgc/image/upload/v1524748081/videojuegos.jpg"}]

genres = Genre.create [{name: "Manga"},
                       {name: "Aventura"},
                       {name: "Ficción"},
                       {name: "Novela"},
                       {name: "Informática"},
                       {name: "Shonen"},
                       {name: "Ciencia Ficción"}]

generosAventuraFiccion = [Genre.where(name: "Aventura"), Genre.where(name: "Ficción"), Genre.where(name: "Novela")]
generosCienciaFiccion = [Genre.where(name: "Ciencia Ficción"), Genre.where(name: "Novela")]
generosManga = [Genre.where(name: "Aventura"), Genre.where(name: "Shonen"), Genre.where(name: "Manga")]
generosInformatica = Genre.where(name: "Informática")

Book.find(1).genres << generosAventuraFiccion
Book.find(2).genres << generosAventuraFiccion
Book.find(3).genres << generosAventuraFiccion
Book.find(5).genres << generosAventuraFiccion
Book.find(6).genres << generosAventuraFiccion
Book.find(7).genres << generosAventuraFiccion
Book.find(8).genres << generosAventuraFiccion
Book.find(9).genres << generosAventuraFiccion
Book.find(10).genres << generosAventuraFiccion
Book.find(11).genres << generosManga
Book.find(12).genres << generosManga
Book.find(13).genres << generosManga
Book.find(14).genres << generosManga
Book.find(15).genres << generosManga
Book.find(16).genres << generosAventuraFiccion
Book.find(17).genres << generosAventuraFiccion
Book.find(18).genres << generosAventuraFiccion
Book.find(19).genres << generosCienciaFiccion
Book.find(20).genres << generosAventuraFiccion
Book.find(21).genres << generosAventuraFiccion
Book.find(22).genres << generosInformatica
Book.find(23).genres << generosInformatica
Book.find(24).genres << Genre.where(name: "Novela")

# Cada libro tiene 4 copias
for book in books
  for n in 0..3
    BookItem.create referenceCode: SecureRandom.uuid, book_id: book.id
  end
end

