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
  image("images/Alexander_Pavlovich_Hrennikoff.jpg", height: 25%),
  caption: [Александр Павлович Хренников (1896 - 1984).],
) <Hrennikoff_A>

Происхождение МКЭ как парадигмы численного моделирования можно проследить до начала 1940-х годов. В 1941 году Александр Павлович Хренников (_Alexander Pavlovich Hrennikoff_, @Hrennikoff_A), русско-канадский инженер-строитель работая в Университете Британской Колумбии, опубликовал в журнале прикладной механики ASME статью о своей модели мембран и пластин в виде решетчатого каркаса @Hrennikoff_A_1941. В основу которой легли результаты его докторской диссертация @Hrennikoff_A_1940, защищенной в 1940 году в Массачусетском технологическом институте. В своих работах Хренников предложил метод, с помощью которого двухмерные упругие континуумы моделируются как система ферменных каркасов. Это был первый опыт дискретизации области поиска решений решетчатой структурой, которая была самой ранней формой сеточной дискретизации.

#figure(
  image("images/Richard_Courant.jpg", height: 25%),
  caption: [Рихард Курант (1888 - 1972).],
) <Courant_R>

#figure(
  image("images/Walther_Ritz.jpg", height: 25%),
  caption: [Вальтер Генрих Ритц (1878 - 1909).],
) <Ritz_W>

#figure(
  image("images/Boris_Grigoryevich_Galerkin.jpg", height: 25%),
  caption: [Борис Григорьевич Галёркин (1871 - 1945).],
) <Galerkin_B_G>

В тот же год, когда Хренников опубликовал свою статью, 3 мая 1941 года, немецкий и американский математик из Нью-Йоркского университета Рихард Курант (_Richard Courant_, @Courant_R) провел лекцию на собрании Американского математического общества в Вашингтоне. Он представил свой численный подход с использованием вариационного метода для решения уравнения второго порядка в частных производных, связанного с проблемой Сен-Венана о кручении цилиндра/стержня. В своей работе Курант систематически использовал для решения вариационной задачи метод Вальтера Ритца (_Walther Heinrich Wilhelm Ritz_, @Ritz_W) с пробной функцией @Ritz_W_1909, определенной на конечных треугольных подобластях, что являлось первичной формой метода конечных элементов @Williamson_Jr_1980. Презентация Куранта была опубликована позже в виде статьи с его численной трактовкой задачи простого кручения для многосвязных областей в 1943 году @Courant_R_1943. В дальнейшем Курант получил ряд научных результатов в области краевых задач УМФ. Подобные работы по дискретизации и вариационным формулировкам также отмечены в литературе, включая работы:
- инженера-исследователя в области гидротехники и гидромеханики, работавшего в Бюро мелиорации США, Дугласа Мак-Генри (_Douglas McHenry_) @McHenry_D_1943;
- американского ученого-механика из Брауновского университета, Вильяма Прагера (_William Prager_, @Prager_W), и ирландского математика преподававшего в Технологическом институте Карнеги, Джона Лайтона Синга (_John Lighton Synge_, @Synge_J_L) @Prager_W_Synge_J_L_1947;
- Дж. Л. Синга и немецкого математика, профессора Фрайбургского университета, Вернера К. Рейнбольдта (_Werner C. Rheinboldt_) @Synge_J_L_Rheinboldt_W_C_1957.

#figure(
  image("images/William_Prager.jpg", height: 25%),
  caption: [Вильям Прагер (1903 - 1980).],
) <Prager_W>

#figure(
  image("images/John_Lighton_Synge.jpg", height: 25%),
  caption: [Джон Лайтон Синг (1897 - 1995).],
) <Synge_J_L>

К началу 1950-х годов ещё несколько инженеров и ученых развили и расширили эти ранние подходы для решения реальных инженерных задач в авиационной и гражданской технике. Основной вклад внесли: 
- Иоаннис Хаджи Аргирис (_Johann Hadji Argyris_, @Argyris_J_H) профессор динамики аэрокосмической техники из Имперского колледжа Лондона, который уже в 1944 году с помощью вычеслительной машины применял энергетический метод для расчетов прочности в авиастроении. Именно он начал объединять все ранее высказанные идеи, в единый математический аппарат добавляя аппроксимацию, которая была основана на вариационном методе Куранта. В 1956 году его теоретические разработки использовались при строительстве Boeing-747, а NASA поручала разработку расчетных методов для проектирования термической защиты космического корабля «Аполлон».
- М. Джонатан Тёрнер (_M. Jonathan Turner_, @Turner_M_J) начальник отдела структурной динамики компании Boeing в г. Сиэтл, который занимался оптимизацией конструкций самолетов, а затем прочностным анализом сверхзвуковых самолетов. Он совместно со своими коллегами предпринял попытку использовать как локальную аппроксимацию ДУ в частных производных для уравнений упругости, так и стратегию "сборки" этих локальных аппроксимаций. Стоит отметить, что данные попытки основывались не на идеях высказанных Курантом о применении вариационного принципа на основе метода Ритца @Ritz_W_1909, а на идее минимизации ошибки, определенной в терминах условий ортогональности, который предложил Борис Григорьевич Галёркин (_Boris Grigoryevich Galerkin_, @Galerkin_B_G) @Galerkin_B_G_1915. Принципы анализа, разработанные Тёрнером, послужили основой для метода прямой жесткости, которые были положены в основову программного обеспечения для компьютерного проектировании Boeing-777.
- Рэй Уильям Клаф (_Ray William Clough_, @Clough_R_W) из Калифорнийского университета в г. Беркли, на тот момент являющийся старшим инженером отдела структурной динамики компании Boeing. Клаф работал в исследовательской группе по анализу динамики и моделировал дельта-крыло с помощью трехмерных конечных элементов. Однако основным вкладом Клафа является разработка конечных элементов, которые отражают свойства реального материала, через его упругие постоянные. Тем самым именно Клаф предпринял попытку моделирования поведения геометрии крыла, с использованием математической модели, рассчитывающей перемещения конструкций. Так как испытания реальных физических моделей, а также лабораторные измерения были стандартным инженерным методом в авиационной промышленности с 1930 до 1970-х годов, именно попытка Клафа была призвана доказать надежность математических моделей и их сходимость с реальным физическим экспериментом. Именно Клаф ввел термин "конечный элемент" (_"finite element"_).
- Гарольд Клиффорд Мартин (_Harold Clifford Martin_, @Martin_H_C) профессор Авиационного факультета Вашингтонского университета в г. Сиэтл, внес вклад в введение трех-/четырехузловых конечных элементов, для которого формировалась матрица жесткости и вектор узловых сил. А также являлся научным консультатнтом Тёрнера, Клафа и Топпа.
- Л. Дж. Топп (_L. J. Topp_), старший инженер отдела структурной динамики компании Boeing в г. Уичито. Также работал в исследовательской группе по анализу динамики и внес свой вклад в введение трех-/четырехузловых конечных элементов.

Обладая глубоким пониманием и видением вариационного подхода Куранта, Аргирис разработал энергетический продход для расчетов инженерных конструкций @Argyris_J_H_1954@Argyris_J_H_1955@Argyris_J_H_1965, фундаментальную разработку, позволяющую использовать МКЭ для твёрдых тел. 
Именно эта группа инженеров: Клаф, Мартин и Топп во главе с Тёрнером при научной поддержке Аргириса разработали то, что мы сегодня знаем как самую раннюю форму МКЭ, которая в то время называлась методом "матричной жесткости" или "прямой жесткости" (_DSM - Direct Stiffness Method_) @Turner_Clough_Martin_Topp_1956. Основной их вклад был связан с введением так называемых "интерполянтов" (_"interpolants"_), математических объектов состоящих из трёх узлов и соединяющих их ребер, которые подходили для описания поведения конструктивных элементов и деталей произвольной формы. Именно этот момент можно считать зарождением понятия "треугольный конечный элемент". Целью применения Тёрнером метода прямой жесткости была автоматизация расчетов вибрации для определения флаттера крыла и динамического анализа. В статье @Clough_1960, опубликованной в 1960 году, Клаф ввел в обиход словосочетание "метод конечных элементов", и эта непритязательная и точная фраза мгновенно стала хитом, раскрывая суть метода. В 1980 году Клаф писал:

#set quote(block: true)

#quote(attribution: [Р. У. Клаф])[
  _"Один из аспектов МКЭ, математическое моделирование континуумов дискретными элементами, можно связать с работой, проведенной независимо в 1940-х годах Мак-Генри и Хренниковым -- в формулировке сборок стержневых элементов для имитации поведения плоских напряженных систем. Действительно, летом 1952 года я работал в компании "The Boeing Aircraft Company", пытаясь адаптировать эту процедуру для анализа дельта-крыла самолета, проблемы, которая в конечном итоге привела к МКЭ."_
]

#figure(
  image("images/Johann_Hadji_Argyris.jpg", height: 25%),
  caption: [Иоаннис Хаджи Аргирис (1913 - 2004).],
) <Argyris_J_H>

#figure(
  image("images/M_Jonathan_Turner.jpg", height: 25%),
  caption: [М. Джонатан Тёрнер (1915 - 1995).],
) <Turner_M_J>

#figure(
  image("images/Ray_William_Clough.png", height: 25%),
  caption: [Рэй Уильям Клаф (1920 - 2016).],
) <Clough_R_W>

#figure(
  image("images/Harold_Clifford_Martin.png", height: 25%),
  caption: [Гарольд Клиффорд Мартин.],
) <Martin_H_C>

В некотором смысле изобретение треугольного конечного элемента было "квантовым скачком", и, следовательно, для широкого круга инженерного сообщества началом МКЭ является именно публикация знаковой статьи Тёрнера и др @Turner_Clough_Martin_Topp_1956. Ниже приводится выдержка из документа 2014 года, посвященного 50-летию образования Национальной Инженерной академии США, которая является официальным отчетом об этой части истории МКЭ:

#set quote(block: true)

#quote(attribution: [2014 NAE Annual Meeting])[
  _"Для обеспечения безопасности и избежания дорогостоящих модификаций после начала производства самолётов, инженерам требовался надёжный метод предварительного определения способности своих конструкций выдерживать нагрузки во время полёта. Руководитель структурного департамента компании Boeing, М. Джон Тернер, решал эту проблему в начале 1950-х, пригласив на летние "стажировки" профессора гражданского строительства Рэя Клафа из Университета Калифорнии в Беркли и Харольда Мартина из Университета Вашингтона в компанию Boeing. Совместно они разработали метод структурного анализа, который Тернер применил в Boeing, используя компьютеры для выполнения множества необходимых расчётов, предсказывающих реальное поведение конструкций. Это плодотворное сотрудничество привело к разработке Клафом несколько лет спустя метода конечных элементов (МКЭ). Клаф создал научную группу в Университете Калифорнии в Беркли, которая использовала МКЭ в широком спектре аналитических и экспериментальных исследований: от проектирования зданий и конструкций, способных выдержать ядерные взрывы или землетрясения, до анализа структурных требований для космических кораблей и морских буровых установок на глубоких водах. Революционизируя применение компьютерных технологий в инженерии, МКЭ по-прежнему помогает инженерам современно проектировать все виды прочных и экономичных конструкций. Между тем, усилия Тернера в Boeing способствовали успеху его известной серии коммерческих самолётов, начиная с 1958 года с модели 707 и продолжаясь в 1964 году с моделью 727, которая могла приземляться на более коротких взлётно-посадочных полосах и обслуживать больше аэропортов. Оснащённый тремя топливоэффективными турбовентиляторными двигателями, 727 стал основным самолётом коммерческой авиации и помог достичь троекратного увеличения пассажирских авиаперевозок в США в 60-х годах."_
]

#figure(
  image("images/Kang_Feng.jpg", height: 25%),
  caption: [Кан Фэн (1920-199).],
) <Feng_K>

В начале 1960-х годов, китайский математик Кан Фэн (_Feng Kang_, @Feng_K) из Китайской академии наук также независимо предложил численный метод основанный на дискретизации и вариационных принципах для решения эллиптических ДУ в частных производных @Feng_K_1965. Профессор Фэн применял этот метод для расчётов конструкций плотин, и в общем виде, он мог быть определен как разностная схема, основанная на вариационных принципах (基于变分原理的差分法法). Так как Фэн стажировался в Математическом институте им. В. А. Стеклова АН СССР, он также внес вклад в несколько областей чистой математики и алгебры. В дальнейшем его опыт позволил внести существенный вклад в прикладные и вычислительные области математики, три из которых напрямую относятся к МКЭ:
+ разработал и одним из первым исследовал теорию сходимости МКЭ в вариационной постановке с использованием оценок в функциональных пространствах Соболева;
+ в 1970-х годах разработал теории вложения в пространство разрывных конечных элементов и обобщил классическую теорию эллиптических ДУ в частных производных на различные размерные комбинации, что обеспечило математическую основу для расчётов упругих композитных конструкций;
+ в конце 1970-х годов работал над сведением эллиптических ДУ к граничным интегральным уравнениям, что привело к разработке метода естественных граничных элементов, который в настоящее время рассматривается как один из трех основных методов граничных элементов;
+ c 1984 года возглавлял исследовательскую группу, которая работала над симплектическими алгоритмами для решения гамильтоновых систем с конечными и бесконечными размерностями, а также над динамическими системами с алгебраическими структурами Ли, такими как контактные системы и системы без источников. Эти работы сформировали теорию и заложили основу прикладным вычислительным методам молекулярной динамики, без которой сейчас невозможно обойтись при разработке новых материалов.

#figure(
  image("images/Peter_David_Lax.jpg", height: 25%),
  caption: [Питер Дэвид Лакс (1926 - ).],
) <Lax_P_D>

Такими словами американский математик Питер Дэвид Лакс (_Peter David Lax_, @Lax_P_D), внёсший огромный вклад в чистую и прикладную математику (в области вычислительной гидродинамики), прокомментировал вклад Фэна в МКЭ и его работу, которая была одним из первых исследований сходимости МКЭ @Lax_P_D_1993.

#set quote(block: true)

#quote(attribution: [П. Д. Лакс])[
"Независимо от параллельных разработок на Западе, он (Фен) создал теорию МКЭ. Он сыграл важную роль как в реализации метода, так и в создании его теоретической основы с использованием оценок в пространствах Соболева. Он показал как эффективно комбинировать граничные и доменные конечные элементы, используя преимущества интегральных соотношений, удовлетворяемых решениями ДУ в частных производных. В частности, он показал, как таким образом можно обеспечить условия излучения."
]



#bibliography("content/list.bib")
