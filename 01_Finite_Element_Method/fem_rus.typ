#set text(
  font: "New Computer Modern",
  size: 12pt
)
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 1.5cm),
)
#set par(
  justify: true,
  leading: 0.52em,
)


= 80 лет методу конечных элементов (МКЭ). Рождение, эволюция и будущее

== _Аннотация_
_В данной статье представлены всесторонние исторические сведения начиная с 1941 года о развитии метода конечных элементов (МКЭ), с особым акцентом на разработках, связанных с механикой деформируемого твёрдого тела (МДТТ). Мы предлагаем вам исторический обзор, начиная с теоретических формулировок и происхождения МКЭ, и заканчивая обсуждением важных разработок, которые позволили МКЭ стать численным методом который так востребован для многих задач, связанных с МДТТ._

== Введение

В 2021 году отмечается восьмидесятилетие изобретения метода конечных элементов (МКЭ), который стал "рабочей лошадкой" для вычислительного анализа инженерных конструкций и моделирования широкого спектра физических процессов в научной среде. Его применение включает механику материалов и конструкций, гидро- и газодинамику, тепло- и массоперенос, моделирование различных биологических процессов для медицины и планирования хирургических операций, электромагнетизм, проектирование и анализ полупроводниковых схем/микросхем, аддитивное производство и, вообще, любую возможную физическую проблему, которая может быть описана дифференциальными уравнениями (ДУ) в частных производных. Сейчас частные случаи таких уравнений также называют уравнениями математической физики (УМФ). МКЭ фундаментально изменил способ нашего научного подхода к моделированию и инженерному проектированию. При этом он затронул такие области как автомобилестроение, самолётостроеник, проектирование морских конструкций, атомных станций, мостов, дорог и многоэтажных зданий. Параллельно с развитием МКЭ развивалась и инженерная наука, называемая вычислительной механикой или вычислительной инженерией.

В этой статье мы представляем историческую справку о развитии МКЭ, уделяя основное внимание его применению и его связям с разработками в области МДТТ, ограничиваясь при этом обсуждением других областей. Конечно же нужно отметить, что МКЭ оказал значительное влияние на такие области как механика жидкости, теплообмен и взаимодействие жидкости с конструкциями. Чтобы получить полную сюжетную линию, мы разделяем развитие МКЭ на четыре периода времени:

#set par(justify: false)

+ (1941-1965) Ранние годы МКЭ;
+ (1966-1991) Золотой век МКЭ;
+ (1992–2017) Эпоха крупномасштабного промышленного применение МКЭ и разработка методов вычислительной инженерии материалов;
+ (2018 – наст. время) Эпоха самых современных исследований и технологий применения МКЭ.

#set par(justify: true)

Обратите внимание, что в этой статье может не соблюдаться строгий хронологический порядок разработок МКЭ, поскольку часто эти разработки были переплетены в разные периоды времени.

#set heading(numbering: "1.")

= (1941-1965) Рождение и ранние годы МКЭ

#figure(
  image("images/Hrennikoff.jpg", width: 30%),
  caption: [Александр Павлович Хренников (1896-1984).],
) <Hrennikoff_A>

Происхождение МКЭ как парадигмы численного моделирования можно проследить до начала 1940-х годов. В 1941 году Александр Павлович Хренников, русско-канадский инженер-строитель работая в Университете Британской Колумбии, опубликовал в журнале прикладной механики ASME статью о своей модели мембран и пластин в виде решетчатого каркаса @Hrennikoff_A_1941. В основу которой легли результаты его докторской диссертация @Hrennikoff_A_1940, защищенной в 1940 году в Массачусетском технологическом институте. В своих работах Хренников предложил метод, с помощью которого двухмерные упругие континуумы моделируются как система ферменных каркасов. Это был первый опыт дискретизации области поиска решений решетчатой структурой, которая была самой ранней формой сеточной дискретизации.



#bibliography("content/list.bib")